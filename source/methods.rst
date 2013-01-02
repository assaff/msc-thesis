Methods
========

A machine-learning approach to binding residue prediction
----------------------------------------------------------

We launched an effort to learn the critical features of binding 
residues in PePIs, and develop a classifier to classify the residues
of a given protein structure into binders or non-binders.

We chose to use features of surface geometry (pockets), conservation
(consurf), and computational fragment mapping (ftmap).

We used 73 structures from the peptidb data set.
Out of 103 structures in the original set, we excluded 11 entries with
large conformational change, and 18 entries with a multiple-chain
receptor (see Table S1 in Supplementary Material).

We chose to use the Support Vector Machine model as a classification
model. It is a supervised learning model.
Why?

* It was easily implemented
* Weights can be extracted for different features, shedding light into
  the critical features.



.. attention::
    Perhaps something about the need for peptidb and other data sets.

PeptiDB 2: a high-quality set of peptide-protein interactions
--------------------------------------------------------------

Data curation
~~~~~~~~~~~~~~~

Goal: gather FTMap data on peptide-protein interactions, and
characterize specific interaction profiles

Data set features (ideal):

* high-resolution: bound structure, so we know with high confidence
  how the interface looks. unbound? also should be x-ray structure,
  because we're after the features that are also found in unbound
  structures, so it's best to eliminate artifacts as much as possible.


We compiled a set of peptide-protein interactions, including
experimental structures of the bound complex and the unbound receptor. 
Curation started with the non-redundant set of 61 complexes described
in [peptidb:2010]_, each interaction undergoing manual inspection.
.. Several complexes from that set were manually refreshed when possible, or otherwise discarded.
If an interaction had any of the following "symptoms", it was either
fixed by replacing the structures representing it, or discarded:

* Unbound structure is NMR *[1d4t, 1jd5, 2zjd, 2oei, 3d9t]*. In most
  cases an X-ray structure was found as a substitute.
* Low sequence id between bound/unbound *[2p0w, 1se0, 2d0n, 1qkz,
  1jwg, 1hc9, 1ymt, 1t4f, 1ywo, 3cvp, 3d9t, 1dkz, 1tw6, 2jam]*. All
  interactions currently have **at least 91%** sequence identity between bound
  and unbound structures.
* Low-resolution unbound structure *[2v8y, 1fm9, 2j6f, 1nvr, 2p54]*.
  All structures in the data set are currently X-ray structures with
  :math:`<3.0 \AA` resolution.
* Better bound structure *[1sfi/2age, 2ak5/2df6, ]*
* Ambiguity over the identity of the peptide

Additionally, each entry was annotated with:

* Biological context and function of protein
* Biological unit and role of receptor in it (stable complex with
  other proteins, homo-oligomer)
* multiple peptides *[2vj0, 1lvm]*
* Crystal contact, especially in the interface *[1tp5]*
.. * domain decomposition of unbound (is relevant?)

For each of the interactions in the data set, the bound complex was
superimposed over the unbound receptor based on BLAST [BLAST]_
sequence alignment between the corresponding receptor chains.
Each of the receptors was additionally decomposed into individual
domains based on CATH classification [CATH]_, to allow per-domain
analysis of the peptide binding site.

