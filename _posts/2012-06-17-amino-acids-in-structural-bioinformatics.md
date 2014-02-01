---
layout: post
title: Amino Acids in Structural Bioinformatics
author: Fabio Madeira
tags:
- Proteins
- Bioinformatics
---

A long-standing goal in Bioinformatics has been to predict protein structure from sequence. One aspect that obviously matters is amino acids' physico-chemical properties.

Proteins are quite compact in structure, and the different residues pack together in a way that is almost space filling (search for [shape complementarity](http://www.ncbi.nlm.nih.gov/pubmed/18837463)). The volume occupied by the side groups is important for proteins folding, and also for protein evolution. It would be difficult to substitute a very large amino acid for a small on because this would disrupt the structure. The most important properties to have in consideration for protein structure prediction/folding/evolution studies are:

* Volume (generally the sum of spheres defined by the van der Waals radii of its constituent atoms)

* Bulkiness (defined as the ratio of the side chain volume to its length, which provides a measure of the average cross-sectional area of the side chain)

* Polarity Index (based on electrostatic forces; distinguish between charged and uncharged)

* pI (pH of the isoelectric point of the amino acid; distinguish positively and negatively charged amino acids)

* Hydrophobicity (propensity for being at the interior or at the surface of the structure)

* Surface Area (area of the amino acid that is exposed (accessible) to water in an unfolded peptide chain and that becomes buried when the chain folds)

Neutral, nonpolar: W, F, G,  A, V,  I, L, M, P; Neutral, polar: Y, S, T, N, Q, C; Acidic: D, E; Basic: K, R, H

I will be writing about important techniques for presenting multidimensional data sets, such as amino acids properties. These methods include [Principal Component Analysis (PCA)](http://en.wikipedia.org/wiki/Principal_component_analysis) and [Clustering](http://en.wikipedia.org/wiki/Cluster_analysis).


