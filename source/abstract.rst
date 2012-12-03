Abstract
=========

Peptide-protein interactions are key to many cellular processes, from
signal transduction to transcription regulation. 
In a previous study we compiled a set of structures of peptide-protein
complexes (PeptiDB), and analyzed this set to structurally
characterize peptide-protein interactions1. 
We found very little change in the receptor between bound and unbound
conformations, and that these interactions are mediated by a few
hot-spot residues that play a crucial role in binding.

Based on these observations we developed a protocol for the
identification of peptide binding sites on proteins. 
The protocol, PeptiMap, uses the Fast Fourier Transform correlation
approach to efficiently search the entire protein surface for regions
that bind several small organic probe molecules2. 
This approach was proven highly successful in predicting ligand
binding sites; here we have augmented and tuned it to specifically
identify peptide binding sites.

PeptiMap identifies binding sites accurately on protein receptor
structures of a recently-refined edition of the PeptiDB data set. 
In most cases, the binding site is among the three top-ranked
predictions, even on unbound, free receptor structures. 
Our approach outperforms existing methods while side-stepping some of
their shortcomings. 

We have previously developed Rosetta FlexPepDock to model the detailed
structure of a peptide-protein complex given a known binding site on
the receptor. 
A combination of PeptiMap and FlexPepDock will allow us to provide
atom-resolution structures of peptide-protein complexes starting from
the free receptor protein structure without any prior knowledge of the
binding site.

