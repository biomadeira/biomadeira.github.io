---
layout: post
class: post-template
image: assets/images/json-schema-process.webp
navigation: True
title: Data validation with JSON Schema
author: biomadeira
tags:
- Schemas
- JSON
- Python
- Bioinformatics
- Tech
---

[JSON Schema](https://json-schema.org/) is a declarative language that allows annotation and 
validation of JSON documents. 
The benefits of JSON Schema are that it can fully describe existing data formats, and it provides clear
human and machine-readable documentation.

> JSON Schema enables the confident and reliable use of the JSON data format. 

The document containing the formal description or definiton is called the schema. 
The term *Schema* is well known within computer programming, particularly in regards to relational databases.
In that context, the schema describes the structure and rules of a database and the relationships 
between data elements.
In a broader sense, a schema refers to any structured document with a set rules and restrictions.
The JSON document being validated or described is usually called the instance.

## Getting started with JSON Schema

The most basic schema is a blank JSON object `{}`, 
which allows any data structure but unfortunately it is not very useful as it does not describe
anything in particular.

From the [JSON Schema Getting started guide](https://json-schema.org/learn/getting-started-step-by-step.html),
to start a JSON Schema definition, we need to add a few properties called **keywords**,
which are expressed as JSON keys:

{% highlight json %}
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.com/product.schema.json",
  "title": "Product",
  "description": "A product in the catalog",
  "type": "object"
}
{% endhighlight %}

* The `$schema` keyword states that this schema is written according to a specific draft of the
standard and used for a variety of reasons, primarily version control.
* The `$id` keyword defines a URI for the schema, and the base URI that other URI references within 
the schema are resolved against.
* The `title` and `description` annotation keywords are descriptive only. 
They do not add constraints to the data being validated. 
The intent of the schema is stated with these two keywords.
* The `type` validation keyword defines the first constraint on our JSON data and in this case 
it has to be a JSON Object.

Then we need to define the `properties` and `required` validation keywords.

{% highlight json %}
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.com/product.schema.json",
  "title": "Product",
  "description": "A product from the catalog",
  "type": "object",
  "properties": {
    "productId": {
      "description": "The unique identifier for a product",
      "type": "integer"
    },
    "productName": {
      "description": "Name of the product",
      "type": "string"
    },
    "price": {
      "description": "The price of the product",
      "type": "number",
      "exclusiveMinimum": 0
    },
    "tags": {
      "description": "Tags for the product",
      "type": "array",
      "items": {
        "type": "string"
      },
      "minItems": 1,
      "uniqueItems": true
    }
  },
  "required": [ "productId", "productName", "price" ]
}
{% endhighlight %}

The validation keywords are useful to restrict the datatypes the properties can take.
The `type` keyword can be used to restrict an instance to an 
`object`, `array`, `string`, `integer`, `number`, `boolean`, or `null`.
JSON Schema provides many additional datatype-specific keywords, as shown for example
for the "tags" `array` type: `items`, `uniqueItems`, `minItems`, etc.

With object and array types we can produce nested data structures.
For example, the "dimensions" key is of type `object`. We can then use the properties validation keyword 
to define the nested data structure as shown below:

{% highlight json %}
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$id": "https://example.com/product.schema.json",
  "title": "Product",
  "description": "A product from the catalog",
  "type": "object",
  "properties": {
    "$comment": "(...) example truncated for brevity",
    "dimensions": {
      "type": "object",
      "properties": {
        "length": {
          "type": "number"
        },
        "width": {
          "type": "number"
        },
        "height": {
          "type": "number"
        }
      },
      "required": [ "length", "width", "height" ]
    }
  },
  "required": [ "dimensions" ]
}
{% endhighlight %}

Another neat feature is that JSON Schema allows sharing the  schema across many data structures 
for reuse, readability and maintainability.
This can be achieved with the `$ref` keyword. 
In our previous example, we could have an externally referenced shema *geolocation.shema.json* 
defining a part of our data.

{% highlight json %}
    "warehouseLocation": {
      "description": "Coordinates of the warehouse where the product is located.",
      "$ref": "https://example.com/geolocation.schema.json"
    }
{% endhighlight %}

The overall process of validating data using JSON Schema is illustrated in the 
diagram below:

<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/json-schema-process.webp" class="kg-image" alt="JSON Schema validation example">
    <figcaption>JSON Schema validation process.</figcaption>
</figure>


JSON Schema is hypermedia ready, and can be used for annotating existing JSON-based HTTP APIs.
In fact, the [OpenAPI Specification](https://swagger.io/specification/) (formerly known as Swagger Specification),
which is a popular language-agnostic interface description for HTTP APIs, 
is based on an extended subset of JSON Schema.

JSON Schema is primarily used for describing large sets of self-contained data, 
used as a data descriptor. JSON data can be expanded, though, with linked data, and that is where
[JSON-LD](https://json-ld.org/) comes into the picture. 
JSON-LD is a common [Schema.org](https://schema.org/) markup format. 
It is a lightweight *linked data* format 
which helps creating a network of standards-based, machine-readable data across web sites.
It is an ideal data format for programming environments and REST web services, as it
allows an application to start at one piece of linked data, and follow embedded links
to other pieces of linked data that are hosted on different sites across the web.

## Working with JSON Schema in Python

In addition to other [linters and validators](https://json-schema.org/implementations.html#schema-linter) 
that can be used to check schemas themselves, 
one can validate data against a schema with [jsonschema](https://python-jsonschema.readthedocs.io/en/stable/),
which is an implementation of the JSON Schema specification for Python.
`jsonschema` can be installed locally with `pip install jsonschema`.

The snippet below shows a small validator that uses `jsonschema`.

{% highlight python %}
#!/usr/bin/env python
# -*- coding: utf-8

import json
import easyargs
import jsonschema


@easyargs
def validate_schema(schema, data):
    with open(schema) as schema_file:
        schema_obj = json.load(schema_file)

    with open(data) as data_file:
        data_obj = json.load(data_file)

    if not (jsonschema.validate(data_obj, schema_obj, jsonschema.Draft7Validator)):
        print(f"JSON '{data}' validated against JSON schema '{schema}' ...")
        print("Validated - JSON has all the required fields and expected data types!")


if __name__ == '__main__':
    validate_schema()
{% endhighlight %}

This small comman-line tool (`validate_schema.py`) could be executed as 
`python validate_schema.py example.schema.json example.data.json`.
Alternatively, one could simply run
`jsonschema --validator Draft7Validator -i example.schema.json example.data.json`.
Note that we are using the *Draft7Validator*, but other schema versions could be used.

## JSON Schema in Bioinformatics

JSON Schema has great potential application in Bioinformatics and in other scientific fields. 
Particularly, in projects that rely on user submission and deposition of data. 
There might be many examples that could illustrate a good use of JSON Schema in existing projects,
but I named a couple below which are closer to my heart.

The Protein Data Bank in Europe – Knowledge Base ([PDBe-KB](https://www.ebi.ac.uk/pdbe/pdbe-kb/)) has developed 
the [FunPDBe Data Exchange Format](https://github.com/PDBe-KB/funpdbe-schema), 
which powers the Community-driven enrichment of PDB data, FunPDBe.
This is essentially JSON Schema, which specifies all the details of the data exchange format that is used by FunPDBe.
In addition to the schema specification, the project provides a format validation tool
([funpdbe-validator](https://gitlab.ebi.ac.uk/pdbe-kb/funpdbe/funpdbe-validator)).
This is a Python package that checks overall data sanity and whether the data are valid against the schema.

Another example, is the [SSS JSON Schema](https://github.com/ebi-jdispatcher/sss_json_schema)
project.
This is a JSON Schema for standardising EMBL-EBI's Job Dispatcher 
[Sequence Similarity Search (SSS)](https://www.ebi.ac.uk/Tools/sss/) bioinformatics tool outputs. 
Tool outputs from NCBI BLAST+, FASTA, PSI-BLAST, PSI-SEARCH and others are converted into a JSON format,
that is then validated against the developed schema. 
Examples are also provided on how to validate the outputs against the SSS JSON Schema.

## Concluding remarks

JSON Schema is a lightweight data interchange format that generates human and machine-readable documentation, 
making validation and testing easier. 
It is used extensively for data validaion and to describe the structure of JSON documents.
There are many alternatives out there, for example, 
[TypeSchema](https://typeschema.org/), which focus more on the definition of data models.
Specifically focusing on data validation, a great JSON Schema alternative for Python is
[Pydantic](https://docs.pydantic.dev/).
Pydantic uses Python type annotations and it is very popular for data validation and settings management.
It allows auto creation of JSON schemas from models and the generated JSON is 
compliant with the both JSON Schema and OpenAPI specifications.

The main benefit of JSON Schema, for me, is that it can be used to validate data used in automated testing
and, importantly, to validate user or client submitted data.
Do you use JSON Schema? Share your experiences and your feedback!

---
Image taken from [https://www.asyncapi.com/blog/json-schema-beyond-validation](https://www.asyncapi.com/blog/json-schema-beyond-validation)
