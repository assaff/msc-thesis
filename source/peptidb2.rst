PeptiDB2: a high-quality data set of peptide-protein interactions
=================================================================

.. attention::
    Perhaps something about the need for peptidb and other data sets.


Data curation
-------------

We compiled a set of peptide-protein interactions, including experimental
structures of the bound complex and the unbound receptor. 
Curation started with the non-redundant set of 61 complexes described
in [peptidb:2010]_. 
Several complexes from that set were manually refreshed when possible,
or otherwise discarded.
If an interaction had any of the following "symptoms", it was either
fixed by replacing the structures representing it, or discarded:

* unbound structure is NMR [1d4t, 1jd5, 2zjd, 2oei, 3d9t
* low sequence id between bound/unbound [2p0w, 1se0,
  2d0n,1qkz,1jwg,1hc9, 1ymt, 1t4f, 1ywo, 3cvp, 3d9t, 1dkz, 1tw6, 2jam
* low-resolution unbound structure [2v8y, 1fm9, 2j6f, 1nvr, 2p54
* better bound structure [1sfi/2age, 2ak5/2df6, 
* ambiguity over the identity of the peptide

Additionally, each entry was annotated with:

* Biological units and assembly
* multiple peptides [2vj0, 1lvm
* Crystal contact, especially in the interface [1tp5
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
