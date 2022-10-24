---
layout: post
image: False
navigation: True
title: 3D printing protein models made simple
author: biomadeira
tags:
- 3D Printing
- Archived
---

*tldr; 3D printing protein structure models is made simple with the help of 
powerful Molecule Viewers and affordable 3D printing services…*

<p style="text-align: center;">&hellip;</p>

3D printing is an emerging technology that has been in my mind for years as a way of 
printing physical three-dimensional models of proteins. These not only are very entertaining 
to play with, but also can aid in visualising the molecule and its components.


During my job interviews at the [European Bioinformatics Institute](https://www.ebi.ac.uk/), I could not have noticed 
the lovely collection of 3D printed proteins they had on display.


<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/3d_printing_1.jpeg" class="kg-image" alt="Visual Abstract">
    <figcaption>3D Protein Models displayed at the European Bioinformatics Institute. 
Photo by Fabio Madeira, 2017.</figcaption>
</figure>

I immediately realised 3D proteins would be thoughtful leaving gifts to my mentors at 
the [University of Dundee](https://www.dundee.ac.uk/), 
Professor Geoff Barton and Professor Carol MacKintosh.


After some initial searching, I came across [Biologic Models](https://biologicmodels.com/) which 
seemed like a good starting point. 
They provide a nice selection of beautifully coloured models, but the quality of their products
certainly comes at price. Since my mentors have their “pet” proteins (domains) of interest, I looked for 
ways to 3D printing theirs!


> It turns out that 3D printing protein structures is not that hard after all!!


All it takes, really, is to find suitable proteins, i.e. those with available three-dimensional structure coordinates. 
Such structures are determined by structural biologists and deposited to the
[Protein Data Bank (PDB)](https://www.wwpdb.org/). In this particular case,
I was looking for a good looking [SH2 domain](https://en.wikipedia.org/wiki/SH2_domain) for Geoff, 
as well as a [14–3–3 dimer](https://en.wikipedia.org/wiki/14-3-3_protein) for Carol.

With the PDB accession IDs at hand (PDB 1lkk and PDB 1qja for the SH2 domain and the 14–3–3 dimer, 
respectively), all I needed to do was to load each structure (*fetch by PDB ID*) with the 
powerful molecular viewer [USCF Chimera](https://www.cgl.ucsf.edu/chimera/) and do some pre-processing of the 3D models.


Following on the SH2 domain as an example, after fetching the molecule from the PDB, it is advisable to hide
(or remove) any ligands and side chain heteroatoms. You can do this simply 
by hiding the atoms `Actions > Atoms/Bonds > hide`.


To increase the height and width of the ribbon displayed, which is crucial to increase the chances there won't
be any problems 3D printing the molecule, head over to `Tools > Depiction > Ribbon Style Editor` and 
increase both width and height of the various ribbon components.

<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/3d_printing_2.png" class="kg-image" alt="Visual Abstract">
    <figcaption>USCF Chimera‘s Ribbon Style Editor and ribbon representation of the SH2 domain.</figcaption>
</figure>

If your structure contains secondary structure elements (SSEs) like beta-sheets and alpha-helices, 
make sure to increase the width and height of the Arrows (base and tip), 
*Sheet* and *Helix*, in addition to the *Coil*, which connects the SSEs.


From my limited experimentation, typical values that should be good for 3D printing are:

**Widths**

* Coil — 0.9 or higher
* Helix — 1.7 or higher
* Sheet —1.7 or higher
* Arrow (base) — 2.0 or higher
* Arrow (tip) — 0.9 or higher
* Nucleic — 1.7 or higher


**Heights**

* Coil, Helix, Sheet, etc. — 0.7 or higher


It is advisable to pick structures witch do not contain ‘discontinuities’ in the 3D coordinates, 
as 3D printing will split these molecules into multiple parts. (And yes, I made that mistake!)

<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/3d_printing_3.png" class="kg-image" alt="Visual Abstract">
    <figcaption>Ribbon representation of the 14–3–3 dimer highlighting discontinuities in the structure.</figcaption>
</figure>


I came across two main 3D printing services, [Shapeways](https://www.shapeways.com/) 
and [Sculpteo](https://www.sculpteo.com/). Both provide a range of different materials 
and colour finishes for 3D models in a variety of input formats. UCSF Chimera can export “Scenes” as STL 
formatted files, which is one of the formats supported by both these providers. All is needed is to export 
the models and upload them. Both providers have some checks in place that alert you on potential problems 
in 3D printing the proteins. If you find any issues, increasing the size of the ribbons might be enough,
otherwise, follow the instructions provided by them.

I ended up ordering with Shapeways and here is the result:


<figure class="kg-card kg-image-card kg-width-wide kg-card-hascaption">
    <img src="assets/images/3d_printing_4.jpeg" class="kg-image" alt="Visual Abstract">
    <figcaption>14–3–3 dimers (green) and SH2 domain (blue). Photo by Fábio Madeira, 2017.</figcaption>
</figure>

<p style="text-align: center">&hellip;</p>

*Have you 3D printed your “pet” proteins or used a different printing service?*

*Share your experiences or post your comments/questions!*

<p style="text-align: center">&hellip;</p>

**References / Other reading / Inspiration:**

* [3D Printing ribbons (basic)](https://caretdashcaret.com/2012/10/31/3d-printed-enzyme-proof-of-concept/)
* [3D Printing molecular surfaces (medium)](http://www.over-engineered.com/projects/3d-printed-protein/)
* [3D Printing atoms and bonds (advanced)](http://pubs.rsc.org/en/Content/ArticleLanding/2014/CE/C4CE00371C)
* [What’s next: augmented reality?](https://twitter.com/Allister_Crow/status/933364825450835968)

____
This post is a reproduction of the post originally made on [Medium](https://medium.com/p/dd902cd627ce)
