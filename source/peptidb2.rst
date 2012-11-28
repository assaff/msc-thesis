PeptiDB2: a high-quality data set of peptide-protein interactions
=================================================================

.. attention::
    Perhaps something about the need for peptidb and other data sets.


Data curation
-------------

We compiled a set of peptide-protein interactions, including experimental
structures of the bound complex and the unbound receptor. 
Curation started with the non-redundant set of 61 complexes described
in [London2010]_. 
Several complexes from that set were manually refreshed when possible,
or otherwise discarded.
If an interaction had any of the following "symptoms", it was either
fixed by replacing the structures representing it, or discarded:

* unbound structure is NMR
* low sequence id between bound/unbound
* low-resolution unbound structure
* ambiguity over the identity of the peptide
* crystal contacts

Additionally, each entry was annotated with:

* Biological units and assembly
* Crystal contact, especially in the interface
* domain decomposition of unbound (is relevant?)

It boils down to **[NUMBER]** high-quality interactions (see Table 1).
Structures is available as bound-unbound pairs, where the bound
complex is superimposed onto the unbound receptor. 

.. raw:: latex
    \usepackage{lscape}
    \begin{landscape}

.. csv-table:: 
    :file: _tables/peptidb2_table1.csv
    :header-rows: 1

.. raw:: latex
    \end{landscape}


   
Results and Discussion
-----------------------

PeptiDB2 summary table
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :url: https://docs.google.com/spreadsheet/pub?key=0ApXQ1x_sHoGrdFYwdEJ6aTFZckc3cHlzZEVzV01jUWc&single=true&gid=2&range=A1%3AF100&output=csv
    :header-rows: 1
    :widths: 2 1 1 2 1 2


Machine-learning analysis of binding site features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

details about SVM analysis here.


Crystal contacts and mechanisms of inhibition
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

stuff about crystal contacts
