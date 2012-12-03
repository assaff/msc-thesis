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



