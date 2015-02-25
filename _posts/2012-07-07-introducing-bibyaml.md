---
layout: post
title: Introducing BibYAML
tags:
- News
- Bibliographies
- BibYAML
---

**BibYAML** stands for Bibliographic YAML, and aims to be a new standard for managing, formatting and storing bibliographies. Inheriting the advantages of [BibTeX](http://www.bibtex.org/) and [YAML](http://yaml.org/), it provides human and machine readable bibliographic records that can populate your database and documents. Let's see how it works!

As a simple tool I provide a naive BibTeX parser for converting between the two formats. It can be accessed at [bib2yaml.appspot.com](http://bib2yaml.appspot.com/). 

Imagine the hypotetical **BibTeX** bibliography below:
	
	@BOOK{Book-Title,
	    author    = "Author's Name",
	    publisher = "Fancy Publisher",
	    title     = "The very long book title even with new line 
	    characters",
	    year      =  2012,
	    isbn      = "1234567890",
	}

	@PROCEEDINGS{Conference-XYZ,
	    editor    = {Awesome Editor},
	    title     = {Proceedings of the Xth Conference on XYZ},
	    year      = {2012},
	    month     = july,
	}

the resultant **BibYAML** would be: 
	
	BOOK:
	    - name: Book-Title
	    author: Author's Name
	    publisher: Fancy Publisher
	    title: The very long book title even with new line characters
	    year: 2012
	    isbn: 1234567890

	PROCEEDINGS:
	    - name: Conference-XYZ
	    editor: Awesome Editor
	    title: Proceedings of the Xth Conference on XYZ
	    year: 2012
	    month: july

This tool was tested for a limited set of BibTeX entries, but it seems to be working fine. It looks like the simpler BibTeX parser developed so far, though. The idea then is to start using BibYAML to populate databases or documents. Since YAML is really easy to parse, and there are YAML parsers for virtually all programming languages in use, there are obvious advantages in using it. I hope you like the idea!

