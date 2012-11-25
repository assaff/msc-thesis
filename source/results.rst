Results
=======

PeptiDB2: a high-quality set of peptide-protein interaction data
----------------------------------------------------------------

Features:

1. Short peptides (5-15 aa)
2. Non-redundant (seqid < 70%)
3. 44 interactions, represented by high-quality X-ray structures (bound + unbound) with resolution < 2.5Å

Other data sets: PeptiDB1 (n=103), PepX (n=505)

Preliminary machine-learning analysis of receptor surface residues suggested hot-spots as a reliable indicator of proximity to binding site.

PeptiMap: an accurate tool for identifying hot-spot binding sites
[b]

FT-Map2 performs a global search of the entire protein surface for regions that bind a number of small organic probe molecules. Probes are clustered together to form consensus sites (CS), which represent potential binding sites.

The search is based on the very efficient fast Fourier transform (FFT) correlation approach which can sample billions of probe positions, and on a detailed energy expression, resulting in a very accurate identification of low-energy probe clusters.

Hot-spots are key to understanding peptide-protein interactions
----------------------------------------------------------------

The crucial role that hot spot residues play in protein-protein and
peptide-protein interactions is a matter of consensus
[ftmap_analysis]. 

Predicting peptide binding sites 
--------------------------------

In order to evaluate how reliable PeptiMap identifies peptide binding
sites on protein structure, we tested it over a set of unbound
receptors taken from the PeptiDB v2 data set.

[Move to methods] When queried with a receptor structure, PeptiMap
performs the FFT analysis and outputs a ranked list of consensus
sites, each represented by atoms of the respective probes. We consider
a result (predicted binding site) successful when its centroid is
within 4 angstroms of any peptide atom - a criterion we borrow from
the LigSite method. [Methods: assessment of
prediction quality]

Out of the 48 structures [with status either 1 or 2] in the PeptiDB
data set, 29 were evaluated by PeptiMap [why just 29?]. Initial
analysis failed on 4 structures, i.e. did not produce any result. They
were later re-analyzed using either better domain division or masking
previously-detected areas on the surface.

After re-analyzing "difficult" [red] structures, 60% of the peptide
binding sites were correctly indicated by the top result, and 97% by
one of the top three results.

Since the algorithm is based on the geometric properties of the
protein, inter-domain crevices are known to bias the search. Therefore
in multi-domain proteins we analyze each domain separately, and the
receptor at large as well. 

[Compare with pepsite]


We tested PeptiMap on PeptiDB2, and compared it to PepSite
[Petsalaki2009]_, a program for peptide binding site prediction, that searches for structural environments that are similar to ones observed in known complex structures, on a residue basis.

In this initial assessment, we used the interactions with identical sequence in the bound and unbound receptor. This eliminates artifacts that may result from sequence changes in the binding site.


Overall performance of PeptiMap
-------------------------------

PeptiMap accuracy is increased when the search is performed on distinct domains, and interfaces between domains and between other binding partners are masked (“PeptiMap dom”, red bars). This allows to focus the search on relevant regions.

Success criterion: center of predicted site is within 4Å of any peptide heavy atom. Performance of PepSite2 is shown for comparison.

Example of PeptiMap prediction for the unbound human TRAF domain, overlaid with the peptide from a complex structure of TRAF with PQQADD from CD40 (PDB IDs 1CA4, 1CZY); the peptide overlaps with sites ranked 1 (magenta), 2 (yellow) and 5 (blue).

