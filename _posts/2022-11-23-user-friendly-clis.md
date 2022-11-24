---
layout: post
class: post-template
image: assets/images/Click_cli_screenshot.png
navigation: True
title: Building user-friendly CLIs with Click
author: biomadeira
tags:
- Python
- Tech
---

In software development, we use command line interface (CLI) applications all the time,
for example, to install software packages or to test our code.
Creating CLIs, is a skill that we need to learn sooner or later.
Often times we spend a lot of time thinking about
the functionality of the application we are developing and end up neglecting the importance of designing
usable and user-friendly CLIs.
The [Command Line Interface Guidelines](https://clig.dev/) is an open-source guide for designing CLIs.

> A guide to help you write better command-line programs,
> taking traditional UNIX principles and updating them for the modern day.

Where possible, CLIs should follow patterns that already exist as that makes using them intuitive and guessable.
- CLIs should be easy to use: don’t make an assumption that the user knows or remembers what they should do.
Discoverable CLIs provide a lot of help texts, examples, suggestions when there is an error.
- CLIs should be robust: they should expect unexpected inputs from the user. Errors should be handled gracefully.
- CLIs should provide good documentation: it is a balance between providing too much and too little information.
 

In this article, I want to explore how we can develop user-friendly CLIs in Python using
a popular command line toolkit.
[Click](https://click.palletsprojects.com/) is a Python package to create beautiful CLIs.
It was originally developed by Armin Ronacher,
someone that does not need an introduction within the Python community, the
creator of the popular [Flask](https://flask.palletsprojects.com/) web framework.
In fact, Click was created as a supporting library for Flask.

Click is a composable CLI toolkit that makes it easy to write full-fledged command line tools that are easy to use.
It is highly configurable and comes with sensible defaults out of the box.
Click automatically generates help messages and allows nesting of commands and subcommands.

To get started with Click we can simply install it from PyPI with `pip install click`.
A simple Click CLI could look like this:

{% highlight python %}
import click

@click.command()
@click.option('-c', '--count', default=1, help='Number of greetings.')
@click.option('-n', '--name', prompt='Your name',
              help='The name of the person to greet.')
def cli(count, name):
    """Simple program that greets NAME for a total of COUNT times."""
    for x in range(count):
        click.echo(f"Hello {name}!")

if __name__ == '__main__':
    cli()
{% endhighlight %}

And what it looks like when run:

{% highlight bash %}
$ python cli.py --count=2
Your name: Matthew
Hello Matthew!
Hello Matthew!
{% endhighlight %}

It automatically generates nicely formatted help pages:

{% highlight bash %}
$ python cli.py --help
Usage: cli.py [OPTIONS]

Simple program that greets NAME for a total of COUNT times.

Options:
-c, --count INTEGER  Number of greetings.
-n, --name TEXT      The person to greet.
--help               Show this message and exit.
{% endhighlight %}

The **commands** are basic building blocks of an application.
Click defines commands through the `click.command` decorator.
Values are passed to the commands via **options** or **arguments**.
Options are added with the `click.option` decorator, arguments with the `click.argument`
decorator. 
Both options and argument names are passed to the function as a variable with the same name.

## Options
As shown in the example above, option names are prefixed with one or two dashes.
We can ask a user to provide a value interactively with `prompt='Your name'`.
In the example, we have also the `--count` option which takes a number. 
The number determines how many times greeting is printed to the console, 
which defaults to 1 (`default=1`).
Options can additionally be set as boolean flags with `is_flag=True`. 
Here we need to set the default value to either `True` or `False` depending on the 
behaviour we want from the option.

## Arguments
Values in options follow the name of the option while arguments are taken positionally.
Contrary to options, we do not prefix argument names with one or two dashes
(e.g. `@click.argument('age', type=int, default=20)`).
The arguments may also have default values.
With the nargs option, we can set that an argument that takes multiple values. 
If we set `nargs=-1`, then the argument may take variable number of values.
For example:

{% highlight python %}
import click

@click.command()
@click.argument('values', type=int, nargs=-1)
def cli(values):
    click.echo(f'The sum is {sum(values)}')

if __name__ == '__main__':
    cli()
{% endhighlight %}

Running this example would look like:

{% highlight bash %}
$ python cli.py 1 2 3 4 5
The sum is 15
{% endhighlight %}

As described, Click supports two types of parameters for CLIs: options and arguments.
It is not often obvious which one we should use. 
Options, as its name indicates, are generally optional, 
while arguments can be optional within reason.
Arguments are much more restricted in how optional they can be.
Both can be set as required with the argument `required=True`, which defaults to false.
The recommendation is to use arguments exclusively for things like passing input filenames and URLs, 
and have everything else be an option instead.

The key differences in Click are that arguments can do less than options. 
For example, only options:

- can automatically prompt for missing input
- can act as flags (boolean or otherwise)
- can pull optional values from environment variables (e.g. `envvar='PATH'`)
- are fully documented in the help output

On the other hand, only arguments can accept an arbitrary number of arguments. 
Options typically only accept a single value, unless `multiple=True` is provided.
This is useful, as in a hypothetical example, when choosing which output formats one wants to export
`python cli.py <args/opts> --outformat 'yaml' --outformat 'json'`. 
Note that the `--outformat` option is passed twice to the CLI.
This example could possibly be better expressed as flag options instead
`python cli.py <args/opts> --yaml --json`.

We can specify the parameter types as Python types, including `int`, `float`, `str`,
`bool`, etc. 
Nevertheless, Click supports several parameter types out of the box, including `click.STRING`, `click.INT`, 
`click.FLOAT` and `click.BOOL`. 
These are useful to validate the user input. 
`click.BOOL` is automatically used for boolean flags and magically takes values such as 
“1”, “true”, “t”, “yes”, “y”, and “on”, converting them to True. Likewise for False.
Other parameter types include `click.UUID`, `click.File`, 
`click.Path`, `click.Choice`, `click.IntRange`, `click.FloatRange` and `click.DateTime`.
Custom parameter types can be implemented by subclassing `click.ParamType`.
You can read more about this in [Click's documentation](https://click.palletsprojects.com/en/8.1.x/parameters/). 
A quick summary of the types I have used more often is provided below:

- `click.File` will try to lazily open a file for reading, writing, or both.
- `click.Path` will not open a file but perform various checks on the given parameter
(e.g., check if the file exists, check if it is a file and not a directory, etc.)
- `click.DateTime` date or datetime formats that follow the `YYYY-MM-DD HH:MM:SS`. 
Other formats that can be customised.

## Commands
Click commands can be added into groups. Groups are created with the `@click.group` decorator. 
See below an example of a CLI that has two main commands.

{% highlight python %}
import click

def add_common(options: list):
    def _add_options(func):
        for option in reversed(options):
            func = option(func)
        return func
    return _add_options


common_options = [
    click.option('-i', '--input', 'inputfile', type=click.Path(exists=True, readable=True),
                 required=True, multiple=False, help="Input File."),
    click.option('-o', '--output', 'outputfile', type=click.Path(exists=False, writable=True),
                 required=True, multiple=False, help="Output File."),
    click.option('--quiet', 'quiet', is_flag=True, default=False,
                 multiple=False, help="Disables logging.")
]

@click.group(chain=True, context_settings={'help_option_names': ['-h', '--help']})
@click.version_option(version='1.2.3')
def cli():
    """Example CLI with two sub-commands"""
    pass

@cli.command('extract')
@add_common(common_options)
@click.option('-l', '--line', type=click.INT,
              default=0, help='Line number.')
def extract(inputfile: click.Path, outputfile: click.Path,
            line: int = 0, quiet: bool = False) -> None:
    """Extracts some content from a file."""
    extract_content(inputfile, outputfile, line, quiet)


@cli.command('insert')
@add_common(common_options)
def insert(inputfile: click.Path, outputfile: click.Path, 
           quiet: bool = False) -> None:
    """Inserts some content to a file."""
    insert_content(inputfile, outputfile, quiet)

if __name__ == '__main__':
    cli()
{% endhighlight %}

The CLI help output would look like this:

{% highlight bash %}
$ python cli.py -h 
Usage: cli.py [OPTIONS] COMMAND1 [ARGS]... [COMMAND2 [ARGS]...]...

  Example CLI with two sub-commands

Options:
  --version   Show the version and exit.
  -h, --help  Show this message and exit.

Commands:
  extract  Extracts some content from a file.
  insert   Inserts some content to a file.
{% endhighlight %}

Note that we can then check the help also for the commands, for example, the *extract* command:
{% highlight bash %}
$ python cli.py extract -h
Usage: cli.py extract [OPTIONS]

  Extracts some content from a file.

Options:
  -i, --input PATH    Input File.  [required]
  -o, --output PATH   Output File.  [required]
  --quiet             Disables logging.
  -l, --line INTEGER  Line number
  -h, --help          Show this message and exit.
{% endhighlight %}

This example demonstrates the grouping and chaining of Click commands.
Click adds a `--help` command by default, which provides users with an essential piece of documentation.
Users can discover all the commands and options available,
and can refer to it as a reference throughout their use of the CLI.
By setting `context_settings={'help_option_names': ['-h', '--help']}` we can also get help with simply 
typing `-h`.
Another feature that I added in this example, which is often useful is the sharing of common options or arguments.
Click commands can be decorated with a list of shared options, in this example, with `@add_common(common_options)`. 
Notice how you can still decorate the commands with additional options or arguments as you would expect
(`@click.option('-l', '--line', type=click.INT, ...`).
This improves the reusability of your code and hopefully improves the consistency across the 
CLI commands. 
That being said, sometimes consistency conflicts with ease of use.

## Setuptools support

In the examples provided, we have a block at the end of the file which looks like this: 
`if __name__ == '__main__':`. 
This is what standalone Python files look like when we want to execute them.
While we can continue doing that, a better approach is to use setuptools.
The advantage is that setuptools automatically generates executable wrappers for Windows 
so your command line utilities work on Windows too. 
Additionally, setuptools scripts work with virtualenv on Unix without the 
virtualenv having to be activated. 
This is a very useful concept which allows us to bundle 
scripts with all requirements into a virtualenv.
For this purpose, we can define a file `setup.py`, that tells setuptools how to package the CLI.
A key argument in the `setup()` are the `entry_points`. 
Once installed, the CLI could be called in the console simply as `examplecli --help`.

```python
from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()
with open("requirements.txt", "r", encoding="utf-8") as fh:
    requirements = fh.read()
setup(
    name = 'example_cli',
    version = '1.2.3',
    author = 'Foo Bar',
    author_email = 'foo@bar.com',
    license = '<the license you chose>',
    description = '<short description for the tool>',
    long_description = long_description,
    long_description_content_type = "text/markdown",
    url = '<github url where the tool code will remain>',
    py_modules = ['example_cli', 'app'],
    packages = find_packages(),
    install_requires = [requirements],
    python_requires='>=3.9',
    classifiers=[
        "Programming Language :: Python :: 3.9",
        "Operating System :: OS Independent",
    ],
    entry_points = '''
        [console_scripts]
        examplecli=cli:cli
    '''
)
```

One last topic, I think it is worth mentioning is that Click provides the `click.testing` module,
which provides test functionality that helps you invoke command line applications and check their behavior.
More information about testing is provided in 
[Click's documentation](https://click.palletsprojects.com/en/8.1.x/testing/).

Click is a pretty cool CLI package which ticks a lot of the functionality boxes.
All the parameters can be configured via decorators which help keep the CLI code clean.
There is a lot more to Click that was not demonstrated in this post.
Click provides many developer-friendly utilities such as callback functions and other utility functions.
There are many alternatives to Click, the obvious ones being `optparse` and `argparse` 
from the Python standard library. 
The problem with most of them is that they are not easier to use, nor do they provide any extra 
functionality. Personally, I don't use anything else these days. 

I hope this was useful to you! Share your experiences and your thoughts about designing and developing
command line applications and about Click!
