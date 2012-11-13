Introduction
=============

Peptide-protein interactions are complex and important
------------------------------------------------------

General stuff about peptide-protein interactions
************************************************

* protein-protein interactions are involved in numerous cellular
  processes, from *something* to *something else*.
* Often, these interactions are mediated by short, linear segments in
  one partner, which assumes a defined structure only upon binding.
  Since the rest of the protein doesn't contribute much to binding
  energy, these interactions are classified as peptide-protein
  interactions, where the peptide is the crucial segment. Multiple
  studies have shown that these segments retain their capacity to
  interact with the receptor even when detached from the original
  protein context.
* There are also other kinds of peptide-protein interactions, in which
  the peptide is actually a free oligopeptide, e.g. MHC proteins
  interact with cleaved antigen fragments and display them onto the
  cell surface.
* Therapeutic peptides.

Structural analysis
******************************************

* peptide protein interactions have many different conformations
* linear peptides: **do we have something about that?**
* helical peptides: **anything?**

Peptides bind using hot spots
*****************************

* Contrary to the case with PPIs, peptides naturally don't expose a
  large interaction surface. They instead depend on a few amino-acid
  residues who contribute most of the binding energy.
* These hot spots are usually **BLABLABLA**.

Research goals and hypothesis
------------------------------

* What were our goals initially?
  
  - better characterize peptide-protein interactions, picking up from
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

Rosetta FlexPepDock3 was developed in our lab to refine peptide models
in a binding site into an accurate model, by efficiently sampling the
peptide conformation space and selecting favorable conformations.
Subsequently it was extended to fold the peptide in-place starting
from a random conformation near the binding site, effectively
simulating a peptide folding upon binding4. But how can we know where
the peptide binds at all?


