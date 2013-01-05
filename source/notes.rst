=========================
Notes
==========================

Outline
-----------------

Background
~~~~~~~~~~~~

Hallmarks of Peptide-Protein Interactions
"""""""""""""""""""""""""""""""""""""""""""

- protein protein interactions are central to cellular function

- PPIs are realized by different types of interfaces, depending on the
  function and evolutionary history of the interacting partners.
  Some interfaces feature two globular proteins
  each exposing a relatively large, flat surface as the binding
  interface.

- Another type of PPIs are characterized by a short, linear peptide
   interacting with a patch on the other protein's
  surface. **phrasing: convey that the peptide can be either part of a
  globular protein or a free oligopeptide**.

- peptides are sometimes free molecules

- In the context of this work, a peptide is defined as a short (5-15
  aa long) oligopeptide interacting with some globular protein.
    - Defined as interactions between a globular domain and a linear
      polypeptide, whether as a flexible loop/tail or a free molecule.
      See examples in [Petsalaki2008] (review) and [Neduva2006] for
      prominent interaction types. See also [SteinAloy2008] for a
      review.

- *subsubsection: PePIs comprise a unique class of molecular
  interactions*

- The constraints imposed by the small interface directly affect the
  nature of these interactions.
    - PePIs are often transient and weak, making them very sensitive
      to environmental changes
    - 

- these characteristics make for good signaling/switching.

- Besides the purely-scientific interest in this special class of
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

- *subsubsection:: structural hallmarks of PePIs*

- Previous studies (PepX, PepSite) characterized PePIs in some ways,
  but peptidb unraveled features that distinguish PePIs from other
  interactions.
- London et al. described the strategies that peptides take to
  bind their partners.
- They specifically use hot spot residues as hooks who contribute much
  of the binding energy.
- In their binding strategies, peptides resemble small-molecule
  ligands on one hand, and PPIs on the other.
- Hot spot residues are highly enriched in hydrophobic residues
  [London2010].

- detecting interface residues without any knowledge of the peptide or
  its binding site is a formidable task. Peptides are quite diverse
  in structure and mode-of-binding.

- However, as London et al have posed, receptors are pre-arranged to
  bind them, hence it is interesting to find the intrinsic properties
  of the interface. There is a signal there, and we aim to find it.

- *subsubsection: hot spots and their role in PePIs*

- The importance of hot spot residues is well established

- Hot spot residues are especially important in PePIs, simply due to
  the transience of the interaction. Their relative part of the
  interaction energy is notably higher than their PPI counterparts.

- In this work we investigate the role of hot spots using
  computational fragment mapping.

Methods for hot-spot analysis
""""""""""""""""""""""""""""""""

- MSCS is an experimental method for locating hot spot sites on
  protein surfaces.

- MSCS works by soaking the protein in solvents and solving the
  crystal structures.

- it has been shown to be very valuable for hot-spot assessment

- however, it is laborious and costly.

- FTMap has been developed as a computational approximation of MSCS

- FTMap works by comprehensive sampling of the conformation space
  between ...

- FTMap is extremely efficient by leveraging FFT correlations.

- FTMap has successfully described hot spot sites in proteins (RNAse
  I).

Hot spot residues
^^^^^^^^^^^^^^^^^^

- Hot spots are usually defined by ddG (alanine scanning).

- Zerbe 2012 discuss an alternative definition for hot spots, using
  consensus clusters in fragment mapping experiments/calculations.

- These definitions were shown to mostly correlate.

- There are differences between them, though. FTMap might even be more
  sensitive, since alanine scanning only detects interactions realized
  by side-chains. Some hot spots may use backbone interactions.

Support vector machines
""""""""""""""""""""""""

- Support vector machine is a supervised learning model for
  classification problems.

- It relies on the notion of a separating hyperplane.

- Data is usually described by a set of descriptor, e.g. oranges and
  apples may be described by their radius, color, texture et cetera.

- In order to use a SVM, one must train the model using data vectors
  about labeled samples. The model infers an optimal partition of the
  feature space, such that new samples from the same distribution
  are accurately classified.

- Pros:
    * simple to implement

- Cons:
    * susceptible to over-fitting
    * human interpretation of the model is sometimes difficult

- In the first part of this work, we present an exploratory attempt to
  detect peptide-binding residues on a protein surface using a SVM.

Methods
~~~~~~~~



Results
~~~~~~~~

- we revised peptidb for higher-quality structures, annotating
  certain properties about these interactions that deserve some
  specific attention (crystal contacts, biological assembly, sequence
  identity)
- we used different tools that predict ligand binding as features for
  a SVM to predict binding residues. It did not come to fruition.
- To mimic hot-spot side-chains, we used computational fragment
  mapping.
- FTMap soaks a protein structure in different solvents, simulates
  where they bind favorably, and clusters these results into consensus
  clusters.
- it was shown that CSs are highly indicative of ligand binding
  [FTSite]. It is currently the best-performing tool for ligand
  binding site prediction, outperforming all others (fpocket, ligsite,
  castp, etc.).
- it was also shown that in PPIs, these CSs correlate very well with
  hot-spot residues, with energy measured both computationally and
  experimentally.
- The hot-spot based approach is further justified by multiplicity of
  peptides that bind the same receptor. Examples Menin-MLL-JUND,
  SH3, p53 [Petsalaki2008].

- we computed FTMap CSs for all unbound structures in PeptiDB2.
- predictions are ranked by their percentage of total contacts between
  probes and receptor.

Knowledge dump
----------------

From peptidb we learn that hot spots are very important.
From Dima's paper (zerbe) we learn that computational fragment mapping
correlates very well with energetic contribution (hot spots)

--->

Then if we map fragments onto protein surfaces, we can find potential
hot spot locations on the surface.

We need to characterize the features of peptide-binding hot spots, and
based on that profile, we can predict where a peptide should bind.

- [cohesin-dockerin], where hot spots determine specificity.

- Computational approaches to studying PePIs (our focus):
    - Computational fragment mapping (FTMap):
        - Rationale in short
        - Method
        - results with proteins and ligands
    - PepSite
    - Other approaches explored but not matured:
        * Pocket mapping: see CASTp and fPocket for details of
          servers.
        * Conservation [ConSurf].


