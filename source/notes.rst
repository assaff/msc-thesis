Draft notes
==========================

Chronicles of my project
--------------------------

Starting point is PeptiDB 1.
The findings in the peptidb paper pointed to the unique features of
peptide-protein interactions. 
These features are encoded in the receptor structure, like pockets,
hydrogen bonding side-chains, surface accessibility, minimal
conformational change.

We launched an effort to learn the critical features of binding 
residues in PePIs, and develop a classifier to classify the residues
of a given protein structure into binders or non-binders.

We chose to use features of surface geometry (pockets), conservation
(consurf), and computational fragment mapping (ftmap).

We used 73 structures from the peptidb data set. Out of 103 structures
in the original set, we excluded 11 entries with large conformational
change, and 18 entries with a multiple-chain receptor (see Table S1 in
Supplementary Material).

We chose to use the Support Vector Machine model as a classification
model. It is a supervised learning model.
Why?

* It was easily implemented
* Weights can be extracted for different features, shedding light into
  the critical features.

What did we do?

For each of the data sources, we formulated variables to capture the
information these sources disclose about a given residue. These
variables were used as columns in the training table for the SVM
software, in addition to binary labels (binder/non-binder).
Discrete variables were assigned consecutive integer values. All
variables then underwent normalization (for details, see Methods
section).



From peptidb we learn that hot spots are very important.
From Dima's paper (zerbe) we learn that computational fragment mapping
correlates very well with energetic contribution (hot spots)

--->

Then if we map fragments onto protein surfaces, we can find potential
hot spot locations on the surface.

We need to characterize the features of peptide-binding hot spots, and
based on that profile, we can predict where a peptide should bind.


PeptiDB2
---------

Goal: gather FTMap data on peptide-protein interactions, and
characterize specific interaction profiles

Data set features (ideal):

* high-resolution: bound structure, so we know with high confidence
  how the interface looks. unbound? also should be x-ray structure,
  because we're after the features that are also found in unbound
  structures, so it's best to eliminate artifacts as much as possible.
* 


Knowledge dump
----------------

* PPIs:
    - are crucial in many cellular processes [citation here]
    - interfaces are in many cases broad, flat surfaces
    [cohesin-dockerin], where hot spots determine specificity.
* PePIs:
    - Defined as interactions between a globular domain and a linear
      polypeptide, whether as a flexible loop/tail or a free molecule.
      See examples in [Petsalaki2008] (review) and [Neduva2006] for
      prominent interaction types. See also [SteinAloy2008] for a
      review.
    - Highly-prevalent, involved in many important processes
    - Structural basis of interactions (PeptiDB paper [London2010]):
        - receptor doesn't undergo major conformational change.
        - importance of hydrogen bonds and where
        - the role that hot-spot residues play in the interfaces
      **We wanted to look deeper into the binding mechanism of
      peptides, particularly the role that hot-spot residues play in
      these interactions.**
      Our approach relies greatly on computational fragment mapping to
      capture hot-spot sites on the receptor surface.
    - other studies and their findings:

* Computational approaches to studying PePIs (our focus):
    - Computational fragment mapping (FTMap):
        - Rationale in short
        - Method
        - results with proteins and ligands
    - PepSite
    - Other approaches explored but not matured:
        * Pocket mapping: see CASTp and fPocket for details of
          servers.
        * Conservation [ConSurf].


Paragraph titles
-----------------

Background
~~~~~~~~~~~~

* protein protein interactions are central to cellular function
* many PPIs are mediated by peptides
* peptides are sometimes free molecules
* London et al. described the strategies that peptides take to
  bind their partners.
* They specifically use hot spot residues as hooks who contribute much
  of the binding energy.
* In their binding strategies, peptides resemble small-molecule
  ligands on one hand, and PPIs on the other.
* Hot spot residues are highly enriched in hydrophobic residues
  [London2010].
* we revised peptidb for higher-quality structures, annotating
  certain properties about these interactions that deserve some
  specific attention (crystal contacts, biological assembly, sequence
  identity)
* we used different tools that predict ligand binding as features for
  a SVM to predict binding residues. It did not come to fruition.
* To mimic hot-spot side-chains, we used computational fragment
  mapping.
* FTMap soaks a protein structure in different solvents, simulates
  where they bind favorably, and clusters these results into consensus
  clusters.
* it was shown that CSs are highly indicative of ligand binding
  [FTSite]. It is currently the best-performing tool for ligand
  binding site prediction, outperforming all others (fpocket, ligsite,
  castp, etc.).
* it was also shown that in PPIs, these CSs correlate very well with
  hot-spot residues, with energy measured both computationally and
  experimentally.
* The hot-spot based approach is further justified by multiplicity of
  peptides that bind the same receptor. Examples Menin-MLL-JUND,
  SH3, p53 [Petsalaki2008].

Methods
~~~~~~~~


Results
~~~~~~~~

* we computed FTMap CSs for all unbound structures in PeptiDB2.
* predictions are ranked by their percentage of total contacts between
  probes and receptor.
* 
