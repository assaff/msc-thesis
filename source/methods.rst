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

.. _table-svm-features:

.. list-table:: Features used in SVM classification of surface residues.
    :stub-columns: 1
    :header-rows: 1
    :widths: 2 1 4

    * - Feature name
      - Source
      - Description
    * - Fragment Normalized Rank
      - FTMap
      - rank of the CS
    * - Fragment Size
      - FTMap
      - Size of the nearest CS
    * - Conservation Score
      - ConSurf DB
      - Normalized conservations score assigned to
        the residue using a MSA
    * - Pocket Size
      - CASTp
      - Normalized size of the nearest pocket
    * - Polarity
      - Protein sequence
      - Whether the residue is polar, i.e. belongs to the following
        amino acids: [....]
    * - Hydrogen-bonding
      - Protein sequence
      - Whether the residue is prone to form hydrogen bonds,
        i.e. belongs to the list [....]

.. note::
    
    - this is why the linear kernel SVM is appropriate here:

        - it is less prone to overfitting, since the decision function
          is very simple

        - it is decomposable: the parameters learned by the model are
          meaningful to a human, and do not require mathematical
          manipulation.

    - see SVM parameters used in FunHunt paper (Structure, 2007)

Clustering surface residues
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The central component to the DBSCAN is the concept of core samples,
which are samples that are in areas of high density. A cluster is
therefore a set of core samples, each highly similar to each other and
a set of non-core samples that are similar to a core sample (but are
not themselves core samples).  There are two parameters to the
algorithm, ``min_points`` and ``eps``, which define formally what we
mean when we say dense.  A higher ``min_points`` or lower ``eps``
indicate higher density necessary to form a cluster.

More formally, we define a core sample as being a sample in the
dataset such that there exists ``min_samples`` other samples with a
similarity higher than ``eps`` to it, which are defined as neighbors of
the core sample.  This tells us that the core sample is in a dense
area of the vector space.  A cluster is a set of core samples, that
can be built by recursively by taking a core sample, finding all of
its neighbors that are core samples, finding all of their neighbors
that are core samples, and so on.  A cluster also has a set of
non-core samples, which are samples that are neighbors of a core
sample in the cluster but are not themselves core samples.
Intuitively, these samples are on the fringes of a cluster.

Any core sample is part of a cluster, by definition. Further, any
cluster has at least min_samples points in it, following the
definition of a core sample. For any sample that is not a core sample,
and does not have a similarity higher than eps to a core sample, it is
considered an outlier by the algorithm.

The algorithm is non-deterministic, however the core samples
themselves will always belong to the same clusters (although the
labels themselves may be different). The non-determinism comes from
deciding on which cluster a non-core sample belongs to. A non-core
sample can be have a similarity higher than eps to two core samples in
different classes. Following from the triangular inequality, those two
core samples would be less similar than eps from each other – else
they would be in the same class. The non-core sample is simply
assigned to which ever cluster is generated first, where the order is
determined randomly within the code. Other than the ordering of, the
dataset, the algorithm is deterministic, making the results relatively
stable between iterations on the same data.

Reference:
“A Density-Based Algorithm for Discovering Clusters in Large Spatial
Databases with Noise” Ester, M., H. P. Kriegel, J. Sander, and X. Xu,
In Proceedings of the 2nd International Conference on Knowledge
Discovery and Data Mining, Portland, OR, AAAI Press, pp. 226–231. 1996

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


