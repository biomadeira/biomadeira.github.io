---
layout: post
class: post-template
image: assets/images/pair-programming-concept-illustration_114360-2170.jpg
navigation: True
title: Coding best practices for researchers
author: biomadeira
tags:
- Tech
- Open Source
- Open Science
- Research
---

I have recently been invited to deliver a training session on an upcoming course at 
[EMBL-EBI](https://www.ebi.ac.uk/training/materials/computational-biology-training-in-hematology-2023-module1/).
The session is about *good coding practices* and is aimed at researchers and clinicians
that have some experience working in Computational Biology and data analysis.
The subject is vast as it touches on many aspects of software development, Open Source, Open Science, 
reproducible research, and so on.
I will be taking a hybrid approach, by providing some background information but also
guiding the audience through some practical examples that hopefuly
will help them improve their coding skills.

<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/pair-programming-concept-illustration_114360-2170.jpg" class="kg-image" alt="Illustration of two people working on a computer">
    <figcaption>Coding best practices illustration<sup>1</sup>.</figcaption>
</figure>

The main broad topics covered in this training session are expanded below. I am not including the 
code snippets here, but those can be found in or linked from the 
[presentation](https://docs.google.com/presentation/d/1l9Gm9_jywRbvdqf4yiXU2RfngVtShcZCoWy5EWVcWEM/edit?usp=sharing). 

## Software development life cycle (SDLC)

SDLC is a framework that provides general guidelines and a structure for understanding the 
phases of the software development process. 
The phases are not rigid and it is possible to move between them as needed.
Although this framework has little resemblance with the reality of software development within research 
labs, the general concepts and guidelines are still useful to have in mind.
The six phases of the SDLC are:

1. **Planning and Analysis**: This phase involves defining the project goals and objectives, 
as well as determining the project scope, budget, and resources.
The requirements for the software are gathered and analyzed. 
This may include interviews with stakeholders, analysis of existing systems, and the development of user stories.
2. **Design**: During this phase, the software and system architectures are created. 
This typically includes identifying the modules and components that will make up the system, 
and determining how they will interact with each other.
3. **Implementation**: In this phase, the actual code for the software is written. 
This may include writing custom code, integrating third-party libraries or frameworks, 
and integrating with other systems.
4. **Testing and Integration**: This phase involves verifying that the software functions as intended and meets the 
requirements specified in the Planning and Analysis phase. 
This may include unit testing, integration testing, and acceptance testing.
5. **Deployment**: This phase involves delivering the software to end users and making it available for use. 
It includes activities such as packaging the software, installing it on the target environment, 
configuring it, testing the deployment and monitoring it.
6. **Maintenance**: After the software has been released, it will need to be maintained to fix bugs, 
add new features, and make performance improvements.

## Developers' toolbox

The development environment typically requires a set of tools and technologies that are used to 
develop, test, and maintain software.
The main tools that we should consider for our toolbox include:

**Software package management (SPM)**  
SPM systems provide tools that help developers manage and 
deploy software packages and their dependencies. 
Some popular software package management systems include: [Homebrew](https://brew.sh/),
[conda](https://conda.io/), 
[Docker](https://www.docker.com/),
[Spack](https://spack.io/), 
[Yum](http://yum.baseurl.org/).

**Terminal**  
A terminal application (a.k.a command line prompt) provides a number of features that can be useful 
for developers, including customization, search, split panes, autocompletion and integration with other tools.

**Terminal editor**  
It is useful to get familiar with at least one text editor. 
These are run from the command line, rather than within a graphical user interface (GUI).
Popular terminal editors include: [Vim](https://www.vim.org/), [GNU Emacs](https://www.gnu.org/s/emacs/), 
[nano](https://www.nano-editor.org/), etc.

**Text editor**  
A lightweight GUI text editor is used to write and edit code.
Some popular text editors include [Gedit](https://wiki.gnome.org/Apps/Gedit) and 
[Sublime Text](https://www.sublimetext.com/).

**Integrated development environment (IDE)**  
An IDE is a software application that provides a 
comprehensive set of tools for software development.
It includes a GUI text editor packed with extra features, such as: compiler, debugger, testing tools, building tools, and others.
It also provides integration with version control systems, syntax highlighting and spell-checking.
Some popular IDEs include [Eclipse](https://www.eclipse.org/downloads/), 
[Visual Studio Code](https://code.visualstudio.com/), and [IntelliJ IDEA](https://www.jetbrains.com/idea/).
For Data Science and Computational Biology work, there are also 
IDEs and platforms such as [Rstudio](https://posit.co/) and [Jupyter Notebooks/JupyterLab](https://jupyter.org/).

## Managing your codebase

Code management and version control are important practices in software development that help 
developers keep track of changes to the source code of a project. 
Developers can easily view the history of changes made to the codebase,
revert back to previous versions if necessary, and collaborate with others by merging changes and resolving conflicts.
There are several tools for version control, for example [Git](https://git-scm.com/), 
which is a popular distributed version control system.
Using these tools, developers can push their codebase to a central repository to store the code and 
track changes made to it, making it easier to collaborate and maintain the codebase over time.
[GitHub](https://github.com/) and [GitLab](https://about.gitlab.com/) are two popular cloud-based repository 
hosting services, that allow you to manage your Git repositories.

## The importance of UNIX skills

UNIX skills are important since the majority of scientific software runs on UNIX-based operating systems
(e.g. Linux and MacOS).
Knowing how to use the command line and basic commands can be useful for tasks such as 
navigating the file system, creating and editing files, and running scripts.
UNIX skills are also important because many software development tools and technologies, 
such as version control systems and build automation tools, are designed to be used from the command line. 
A large portion of scientific sofware can only be executed from the command line.
Being able to use the command line effectively can therefore make it easier 
to use these tools and integrate them into workflows.

Software Carpentry runs a set of lessons about the [Unix Shell](http://swcarpentry.github.io/shell-novice),
which I would highly recommend for those unfamiliar with UNIX commands and the terminal.

## Best practices

There are several good practices that developers should follow when they are developing new software. 
These include:

**Code styling and conventions**  
Code styling and coding conventions are important practices in software development because they help to improve 
the readability and understandability of the code. These also help to improve collaboration among team members.
Code styling refers to the way in which the code is written, 
including code layout, indentation, whitespace, comments, line breaks, etc.
Coding conventions refer to the naming and organization of code elements, such as variables, functions, and files.
Popular code styling guides include [PEP-8](https://peps.python.org/pep-0008/), 
which is a set of guidelines for writing Python code, and the 
[tidyverse style guide](https://style.tidyverse.org/), which is a style guide for writing R code.

**Don't reinvent the wheel**  
Many fundamental scientific algorithms, methods and data structures have already been implemented in
open source libraries and frameworks.
This means that rather than trying to recreate existing functionality from scratch, 
developers should try to leverage these.
This can save time and effort, and it can also help to ensure that the software is more reliable and robust.
Python and R are popular languagues among Data Science and Computational Biology projects.
Open source libraries include among others, for Python: [SciPy](https://scipy.org/), 
[NumPy](https://numpy.org/), [Pandas](https://pandas.pydata.org/), [matplotlib](https://matplotlib.org/), 
[iPython](https://ipython.org/); for R:
[data.table](https://cran.r-project.org/package=data.table/vignettes/datatable-intro.html), 
[dplyr](https://dplyr.tidyverse.org/), [tidyr](https://tidyr.tidyverse.org/), 
[ggplot2](https://ggplot2.tidyverse.org/), [shiny](https://shiny.rstudio.com/); for Bioinformatics: 
[Biopython](https://biopython.org/), [BioPerl](https://bioperl.org/), [BioJulia](https://biojulia.net/), 
[Bioconductor](https://www.bioconductor.org/).

**Don't repeat yourself**  
Software systems should be designed in a way that avoids duplication of information and functionality. 
The goal is to reduce complexity, improve maintainability, and increase the reusability of code.

**Single Responsibility**  
A class or module should have a single, well-defined responsibility. This means that it should have a clear 
and specific purpose, and all of its functionality should be related to that purpose.
This helps to create more modular and maintainable code, as it reduces the complexity of individual 
classes and makes it easier to understand and change the codebase.

**Standards and interoperability**  
In relation to data and software distribution, follow standards and conventions for open data and open
software such as 
[FAIR](https://www.go-fair.org/) and [FAIR4RS](https://www.rd-alliance.org/groups/fair-research-software-fair4rs-wg).
There are domain specific file formats used in the
Biofinformatics (e.g. FASTA, FASTQ, GFF, VCF, S/BAM, PDB), which should be used as both researchers
and the tools are expecting them.

**Other tips and considerations**  
It is good to keep the code efficient and concise. Nevertheless, making code readable is
usually as important as writing code that is efficient.
Developing standalone software is very different than developing analysis pipelines.
Special considerations need to be taken into account when developing analysis pipelines, such as
where the software will be exectuted: in single machines or high performance clusters (HPC);
on premise (Slurm, SGE, LSF, etc.), or in open cloud platforms (AWS, GCP, etc.).
If you are building workflows, various workflow management tools exist, for example 
[Snakemake](https://snakemake.readthedocs.io/en/stable/) and [Nextflow](https://www.nextflow.io/),
that can help with achieving scalability and interoperability of the software.

## Releasing your software

Important aspects to consider when releasing new software are:

**README**  
You should provide a README file. This acts as an entry point to your repository 
and should include a description of the software, installation instructions,
and any other important information.

**Documentation**  
It is important to provide clear documentation for the software, including installation instructions,
usage guidelines, and API references. This will help users understand how to use the software and
will also make it easier for other developers to contribute to the project.
Commenting your code is also important as it helps guiding developers through the logic that
you implemented.
For example, [Read the Docs](https://readthedocs.org/) and [MkDocs](https://www.mkdocs.org/), 
are two popular platforms that simplify generation, building and hosting of technical documentation for your software.

**License**  
It is important to include a license with the software that specifies the terms of use and distribution,
but also protects the intellectual property of the software developers.
There are a number of websites that you can use to help you choose an appropriate license for your software,
for example: [Choose a License](https://choosealicense.com/) and the
[Public Licence Selector](https://ufal.github.io/public-license-selector/).

**Versioning**  
Using a consistent versioning scheme, such as [Semantic versioning](https://semver.org/), 
is also a good practice.
Semantic versioning is a convention for versioning software releases
that follows a specific format: *major.minor.patch*.
When releasing software, it is often useful to work with multiple branches,
for example: feature branches, release branches and hotfix branches.
This can help to isolate changes and ensure that the software is stable before it is released.

**Testing**  
It is important to thoroughly test the software before releasing it to ensure that it is stable and
as much bug-free as possible.
This may involve conducting various types of testing, such as unit testing, integration testing,
and acceptance testing.
In addition to software testing, code reviewing and pair-programming are important practices
that can help to improve the quality of code and increase collaboration among team members.

## Concluding remarks

With all this being said, do not forget to be simple, be transparent and be your own best user<sup>3</sup>,
when developing and releasing new software.
Also, do not forget to take credit for your work (e.g. publishing about your software in the
[Journal of Open Source Software](https://joss.theoj.org/)). 
Above all, don't forget that **better software leads to better research**, and that is what matters the most.

---
<sup>1</sup>Pair-programming illustration from
[invensis's](https://www.invensis.net/blog/best-practices-for-software-development-team).

<sup>2</sup>Git reference sheet from 
[NeSI](https://support.nesi.org.nz/hc/en-gb/articles/360001508515-Git-Reference-Sheet).

<sup>3</sup>Prlić A, Procter JB. Ten simple rules for the open development of scientific software. 
*PLoS Comput Biol*. 2012;8(12):e1002802. 


