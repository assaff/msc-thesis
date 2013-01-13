========
Methods
========

.. _methods-svm:

Support-vector classification of peptide-binding residues
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


For each of the data sources, we formulated variables to capture the
information these sources disclose about a given residue.
These variables were used as columns in the training table for the SVM
software, in addition to binary labels (binder/non-binder).
Discrete variables were assigned consecutive integer values.
All variables then underwent normalization (for details, see Methods
section).


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


