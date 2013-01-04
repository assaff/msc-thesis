Draft notes
==========================

From peptidb we learn that hot spots are very important.
From Dima's paper (zerbe) we learn that computational fragment mapping
correlates very well with energetic contribution (hot spots)

--->

Then if we map fragments onto protein surfaces, we can find potential
hot spot locations on the surface.

We need to characterize the features of peptide-binding hot spots, and
based on that profile, we can predict where a peptide should bind.


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

Hallmarks of Peptide-Protein Interactions
"""""""""""""""""""""""""""""""""""""""""""

* protein protein interactions are central to cellular function

* PPIs are realized by different types of interfaces, depending on the
  function and evolutionary history of the interacting partners.
  Some interfaces feature two globular proteins
  each exposing a relatively large, flat surface as the binding
  interface.

* Another type of PPIs are characterized by a short, linear peptide
   interacting with a patch on the other protein's
  surface. **phrasing: convey that the peptide can be either part of a
  globular protein or a free oligopeptide**.

* peptides are sometimes free molecules

* In the context of this work, a peptide is defined as a short (5-15
  aa long) oligopeptide interacting with some globular protein.

* *subsubsection: PePIs comprise a unique class of molecular
  interactions*

* The constraints imposed by the small interface directly affect the
  nature of these interactions.
    - PePIs are often transient and weak, making them very sensitive
      to environmental changes
    - 

* these characteristics make for good signaling/switching.

* Besides the purely-scientific interest in this special class of
  molecular interaction, it is also a highly attractive subject for
  engineering and biomedical research.

  - The smaller, less-complex binding interface lends itself well to
    easier manipulation.
  - Drug design using small molecules is mostly about manipulation of
    catalytic interactions, e.g. disrupting catalysis by a drug to
    compete for an enzyme active site against a natural substrate.
    Engineering peptide-mediated interactions opens up many cellular
    interactions (signaling) as drug targets.
  - Low antigenic determinant

* *subsubsection:: structural hallmarks of PePIs*

* Previous studies (PepX, PepSite) characterized PePIs in some ways,
  but peptidb unraveled features that distinguish PePIs from other
  interactions.
* London et al. described the strategies that peptides take to
  bind their partners.
* They specifically use hot spot residues as hooks who contribute much
  of the binding energy.
* In their binding strategies, peptides resemble small-molecule
  ligands on one hand, and PPIs on the other.
* Hot spot residues are highly enriched in hydrophobic residues
  [London2010].

* *subsubsection: hot spots and their role in PePIs*

* The importance of hot spot residues is well established

* Hot spot residues are especially important in PePIs, simply due to
  the transience of the interaction. Their relative part of the
  interaction energy is notably higher than their PPI counterparts.

* In this work we investigate the role of hot spots using
  computational fragment mapping.

Computational fragment mapping
""""""""""""""""""""""""""""""""

**[to be continued]**

Methods
~~~~~~~~


Results
~~~~~~~~

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

* we computed FTMap CSs for all unbound structures in PeptiDB2.
* predictions are ranked by their percentage of total contacts between
  probes and receptor.
