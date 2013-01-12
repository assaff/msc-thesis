Abstract
=========

Peptide-protein interactions are central components of cell function and play major roles in regulation, signal transduction, and other crucial features in the cell. This is an elusive type of interaction, since it is often weak and transient.

Due to this nature, this type of interaction challenges
conventional tools and approaches of biochemical and computational
investigation.

Computational research of these interactions has made great strides
in recent years with multiple efforts to collect and analyze
experimental data, as well as to model these interactions *in-silico*.
A list of protein domains that are known to bind to linear peptide motifs in other proteins (e.g. SH2, WW, PDZ domains) have been characterized. In these cases, the binding site of the peptide is well known, and the challenge remains to identify which peptides will bind to a specific domain. For the remaining peptide-mediated interactions, work remains to be done to identify the peptide binding site.

Towards this goal, our group has previously performed an analysis of known peptide-protein complex structures and protein-protein complex structures (e.g. interactions between globular domain). By comparing these two types of interaction, we could characterize both common and distinct features of peptide-mediated interactions. In particular, we found that as in interactions between globular protein domains, a few residues contribute the major part of the binding energy. Identification and characterization of these hot-spot residues can nail down the main features that determine peptide binding. 
Interestingly, it has been shown, both in experiment (ref Ringe) as well as in modeling (ref Dima) that the surface of a protein contains sites where different types of solvent bind preferably. These sites tend also to coincide with binding to larger molecules, such as peptides and proteins. 
Indeed, computational fragment mapping has been shown to detect the same
features of the receptor surface as ligands do (be it other proteins
or small molecules), and offers insights as to the geometry and
chemical nature of key components of the interaction.

Despite these advances however, many basic features and details of the mechanism by which peptides bind their protein partners remain yet unknown, and therefore this is a busy field of current research.
The aim of my MSc project was to develop a protocol for the prediction of peptide binding sites on protein structures, using as a starting point the previous analysis on the structural features of peptide-protein interactions and FTmap results. 

In this work we present a new data set of peptide-protein
interactions, 
and results of computational fragment mapping on unbound structures
from that set.
These results are analyzed **[in what way?]**, revealing that peptide
hot-spot residues correlate highly with **dense, highly-populated
[speculation]** clusters of probes.
We also present PeptiMap, a method to predict peptide binding-sites
based on that analysis.
In most cases, the binding site is among the three top-ranked
predictions, even on unbound, free receptor structures.  Our
approach outperforms existing methods while side-stepping some of
their shortcomings. 

We have previously developed Rosetta FlexPepDock to model the
detailed structure of a peptide-protein complex given a known
binding site on the receptor.  A combination of PeptiMap and
FlexPepDock will allow us to provide atom-resolution structures of
peptide-protein complexes starting from the free receptor protein
structure without any prior knowledge of the binding site.

.. commented

    Peptide-protein interactions are key to many cellular processes,
    from signal transduction to transcription regulation.  In a
    previous study we compiled a set of structures of peptide-protein
    complexes (PeptiDB), and analyzed this set to structurally
    characterize peptide-protein interactions1.  We found very little
    change in the receptor between bound and unbound conformations,
    and that these interactions are mediated by a few hot-spot
    residues that play a crucial role in binding.

    Based on these observations we developed a protocol for the
    identification of peptide binding sites on proteins.  The
    protocol, PeptiMap, uses the Fast Fourier Transform correlation
    approach to efficiently search the entire protein surface for
    regions that bind several small organic probe molecules2.  This
    approach was proven highly successful in predicting ligand binding
    sites; here we have augmented and tuned it to specifically
    identify peptide binding sites.

    PeptiMap identifies binding sites accurately on protein receptor
    structures of a recently-refined edition of the PeptiDB data set.
    In most cases, the binding site is among the three top-ranked
    predictions, even on unbound, free receptor structures.  Our
    approach outperforms existing methods while side-stepping some of
    their shortcomings. 

    We have previously developed Rosetta FlexPepDock to model the
    detailed structure of a peptide-protein complex given a known
    binding site on the receptor.  A combination of PeptiMap and
    FlexPepDock will allow us to provide atom-resolution structures of
    peptide-protein complexes starting from the free receptor protein
    structure without any prior knowledge of the binding site.

