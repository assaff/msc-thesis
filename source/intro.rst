Introduction
=============

Peptide-protein interactions are complex and important
------------------------------------------------------

General stuff about peptide-protein interactions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

protein-protein interactions are involved in numerous cellular
processes, from *something* to *something else*.

Often, these interactions are mediated by short, linear segments in
one partner, which assumes a defined structure only upon binding.
Since the rest of the protein doesn't contribute much to binding
energy, these interactions are considered peptide-protein
interactions, where the peptide is the crucial segment. Multiple
studies have shown that these segments retain their capacity to
interact with the receptor even when detached from the original
protein context.

There are also other kinds of peptide-protein interactions, in which
the peptide is actually a free oligopeptide, e.g. MHC proteins
interact with cleaved antigen fragments and display them onto the
cell surface.

Therapeutic peptides.

Structural analysis
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

London et al. [London2010]_ have conducted a structural analysis of
peptide-protein interactions. In that study, a set of 103 interactions
were collected, annotated and analyzed using various computational
methods. It suggests that peptide-protein interactions are:

* mediated by hot-spot residues in the peptide
* have certain propensities of amino-acids
* other stuff from peptidb paper



* peptide protein interactions have many different conformations
* linear peptides: **something?**
* helical peptides: **anything?**

Peptides bind using hot spots
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

Of all the features we examined, the most informative was by-far
FTMap's cluster score. It had a high correlation to residues actually
being binding residues. However, a SVM over receptor residues seemed
to blur the signal from this descriptor. This observation led us to
change our approach to the problem: rather than score residues in the
receptor, based on their proximity to probes in space, we elected to
identify those areas in space directly, and fit the peptide onto them

* Contrary to the case with PPIs, peptides naturally don't expose a
  large interaction surface. They instead depend on a few amino-acid
  residues who contribute most of the binding energy.
* These hot spots are usually **BLABLABLA**.

Research goals and hypothesis
------------------------------

* What were our goals initially?
  
  - Better characterize peptide-protein interactions, picking up from
    PeptiDB [reference here].
  - Develop a method to identify peptide binding sites on protein
    surfaces, which is peptide-agnostic, i.e. depends solely on
    properties of the receptor protein.

Modeling peptide-protein interactions
--------------------------------------

Peptide-protein interactions are a challenge to model, both
computationally and experimentally.

A challenging kind of macromolecular interactions1,5:

1. Crucial for many processes, ubiquitous across cell functions
2. Often transient, weak
3. Diverse in shape, size
4. Experimental structures are not abundant

Difficult to study, both experimentally and computationally

State-of-the-art: accurate modeling of the peptide structure and
orientation, given an approximate binding site

Rosetta FlexPepDock
~~~~~~~~~~~~~~~~~~~

Rosetta FlexPepDock [Raveh2010]_ was developed in our lab to refine peptide models
in a binding site into an accurate model, by efficiently sampling the
peptide conformation space and selecting favorable conformations.
Subsequently it was extended to fold the peptide in-place starting
from a random conformation near the binding site, effectively
simulating a peptide folding upon binding [fpdock_abinitio:2011]_. But how can we know where
the peptide binds at all?


