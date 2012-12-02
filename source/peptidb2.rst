PeptiDB2: a high-quality data set of peptide-protein interactions
=================================================================

.. attention::
    Perhaps something about the need for peptidb and other data sets.


Data curation
-------------

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


   
Results and Discussion
-----------------------

Curation resulted in **[NUMBER OF LINES IN TABLE 1]** high-quality
interactions (see Table 1).
.. Structures are available as bound-unbound pairs, where the bound
.. complex is superimposed onto the unbound receptor. 

.. raw:: latex
    \usepackage{lscape}
    \begin{landscape}

.. csv-table:: 
    :file: _tables/peptidb2_table1.csv
    :header-rows: 1

.. raw:: latex
    \end{landscape}

PeptiDB2 summary table
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table::
    :url: https://docs.google.com/spreadsheet/pub?key=0ApXQ1x_sHoGrdFYwdEJ6aTFZckc3cHlzZEVzV01jUWc&single=true&gid=2&range=A1%3AF100&output=csv
    :header-rows: 1
    :widths: 2 1 1 2 1 2


Crystal contacts in PePIs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In several of the structures curated, we noticed symmetry mates of the
unbound receptor visibly overlapping with the peptide. 

..
    Comparing the sequences of these tails to their corresponding peptides
    did not reveal high sequence correlation **[STATISTICS HERE]**.

This usually involves an extended terminus in the unbound receptor. We
have yet to investigate the meaning of this phenomenon.

Machine-learning analysis of binding site features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

details about SVM analysis here.


