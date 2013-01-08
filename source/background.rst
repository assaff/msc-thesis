===========================
Background and Related Work
===========================


Hallmarks of peptide-protein interactions
------------------------------------------------------

Protein-protein interactions are involved in numerous cellular
processes, from *something* to *something else*.

These interactions take place at interfaces of various forms,
depending on the function and structure of the parties involved.
Many interfaces, especially in large, stable complexes, feature two
globular proteins each exposing a relatively broad, flat surface as
binding interface.

Alternatively, these interactions are mediated by a short, linear
peptide (whether as a free molecule, or a segment in one partner),
interacting with a patch on the surface of another protein (i.e. a
receptor).
Often, the peptide is disordered in solution, yet assumes a defined
structure upon binding.
Since the rest of the protein doesn't contribute much to binding
energy, these interactions are considered peptide-protein
interactions, where the peptide is the crucial segment.
Multiple studies have shown that these segments retain their capacity
to interact with the receptor even when detached from the original
protein context.

There are also other kinds of peptide-protein interactions, in which
the peptide is a free oligopeptide, e.g. MHC proteins
interact with cleaved antigen fragments and display them onto the
cell surface.

- In the context of this work, a peptide is defined as a short (5-15
  aa long) oligopeptide interacting with some globular protein.
    - Defined as interactions between a globular domain and a linear
      polypeptide, whether as a flexible loop/tail or a free molecule.
      See examples in [Petsalaki2008] (review) and [Neduva2006] for
      prominent interaction types. See also [SteinAloy2008] for a
      review.

PePIs comprise a unique class of molecular interactions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The constraints imposed by the small interface directly affect the
nature of these interactions.
- Since the interface is limited to a few residues, there is very little enthalpy to be gained to begin with. 
  Therefore, PePIs are often transient and weak, making them very
  responsive to changes in their environment.
  This property is very appropriate for *signalling*, the primary
  cellular purpose of these interactions.

.. subsubsection: therapeutic peptides

Besides the purely-scientific interest in this special class of
molecular interaction, it is also a highly attractive subject for
engineering and biomedical research.
The smaller, less-complex binding interface lends itself well to
manipulation, since the effect of mutation can be easily isolated and
studied.
Peptides also carry a low antigenic determinant. However, they also
have low bioavailability. Nevertheless, therapeutic peptide research
has been expanding rapidly in recent years, and there are already
several successful designs in clinical trials.

Drug design using small molecules is mostly about manipulation of
catalytic interactions, e.g. disrupting catalysis by a drug to
compete for an enzyme active site against a natural substrate.
Engineering peptide-mediated interactions opens up many cellular
interactions (signaling) as drug targets.


Structural characterization of PePIs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note::
    What do we already know about how PePIs behave?
    How are they different from other interactions?
    Reader should know about the results of PeptiDB study, especially
    about what hot spot residues are and the role they play.


London et al. [London2010]_ have conducted a structural analysis of
peptide-protein interactions. In that study, a set of 103 interactions
was collected, annotated and analyzed using various computational
methods. The analysis suggests that peptide-protein interactions are:

* mediated by *hot-spot residues* in the peptide, enriched in
  hydrophobic residues.
* receptor doesn't undergo major conformational change
* hydrogen bonds are enriched in interface, contributing a lot to
  binding energy.

.. note::
    
    add more content about peptidb study. Use blog for guidance.

Hot spot residues in PPIs
--------------------------

.. hint::
    - The role hot spots play in protein protein interactions.
    - The added importance of hot spots in PePIs.
    - The two definitions of hot spot residues (energetic, MSCS).
    - How they coincide in PPIs.
    - Difference between the two definitions, and the usefulness in
      different contexts. (see Zerbe et al. 2012)

.. commented

    Subsets of peptide-protein interactions
    """""""""""""""""""""""""""""""""""""""

    In order to provide a more close-up view of this kind of interactions,
    we looked closely at the defining characteristics of interaction
    subtypes, defined by the peptide structure. Already in [London2012]_
    it was apparent that helical peptides bind differently than beta
    peptides, which in turn differ from coil peptides. We set out to
    explore these differences from the hot-spot angle.

    * linear peptides: **something?**
    * helical peptides: **anything?**

MSCS
~~~~~

Multiple Solvent Crystal Structures (abbreviated MSCS) is a prominent
experimental method to locate and characterize ligand binding sites on
protein surfaces [Mattos1996]_ [Allen1996]_.
In this method, the X-ray crystal structure of the protein of interest
is solved in aqueous solutions of several organic solvents separately.
These solvent molecules adhere to certain sites on the protein
surface, serving as probes.
They usually cluster together in a few binding sites.
Superimposing multiple structures of the protein in different solvents
reveals the power of this method.
It is common to see overlapping clusters of different solvent types in
a binding site, referred to as *consensus sites* (CSs).
These consensus sites delineate functionally important sites.

.. hint::
    impact of this method

This approach has proven very valuable in drug design. **[add more from
Mattos/Ringe]**

.. hint::
    lead into computational approach.

FTMAP
~~~~~~~

To avoid the laborious and costly experiments entailed by MSCS,
the FTMAP protocol was developed as a computational approximation.
FTMAP uses the Fast Fourier Transform (FFT) correlation approach to
efficiently sample
the rigid-body conformation space of a protein + probe complex.
That allows for accurate identification of probe binding sites,
followed by a clustering and ranking scheme.

.. figure:: _images/ftsite-f1-large.jpg
    :width: 75%
    :align: center
    
    **[caption for ftsite figure]**

For each probe type, FTMAP generates 2000 bound conformations,
minimizes them, clusters them and finally ranks the clusters based on a
free-energy function.
Subsequently, clusters from difference probes are superimposed and
further clustered using a greedy, distance-based algorithm, to produce
consensus clusters. These are ranked by size (the number of clusters
included in each CS).

.. hint::
    * FTMap reproduces experimental MSCS with good accuracy.
    * FTMap successfully identifies PPI hot spots.
    * FTMap allows for fast, large-scale analysis of protein surfaces
      from the hot-spot point of view.


Support vector machines 
-----------------------------

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

The findings in the peptidb paper pointed to the unique features of
peptide-protein interactions. 
These features are encoded in the receptor structure, like pockets,
hydrogen bonding side-chains, surface accessibility, minimal
conformational change.

Definitions of residue features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In a follow up study, we looked into the feasibility of designing a
Support Vector Machine as a predictor of peptide binding sites. We
looked at three qualitatively-different descriptors of a receptor
residue as features:

1. **Surface geometry**: we analyzed the receptor structure with
   CASTp [castp2009]_, which calculates
   pockets near the receptor surface. We then scored each residue
   based on its nearest pocket (size of pocket, proximity to pocket).
2. **Sequence conservation**: we used the ConSurf database [consurf]_
   to acquire conservation scores for each residue in the receptor.
3. **Computational fragment mapping**: we used the FTMap protocol
   [ftmap]_ to simulate fragment binding to the receptor surface. 


Rosetta FlexPepDock
-------------------

Rosetta FlexPepDock [Raveh2010]_ was developed in our lab to refine peptide models
in a binding site into an accurate model, by efficiently sampling the
peptide conformation space and selecting favorable conformations.
Subsequently it was extended to fold the peptide in-place starting
from a random conformation near the binding site, effectively
simulating a peptide folding upon binding [fpdock_abinitio:2011]_. But how can we know where
the peptide binds at all?


