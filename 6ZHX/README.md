# Nucleosome in complex with the regulatory linker segment of ALC1

## Movie

This visualization was made for the following article (but ended up not being
attached to the final published version):

Lehmann LC, Bacic L, Hewitt G, Brackmann K, Sabantsev A, Gaullier G,
Pytharopoulou S, Degliesposti G, Okkenhaug H, Tan S, Costa A, Skehel JM, Boulton
SJ, Deindl S (2020) Mechanistic Insights into Regulation of the ALC1 Remodeler
by the Nucleosome Acidic Patch. *Cell Reports* **33**
<https://doi.org/10.1016/j.celrep.2020.108529>

Not counting the time it took to download the map and model, rendering this
movie took about 20 minutes on a laptop (Intel Core i7 at 3.1 GHz, 16 GB of RAM,
Intel Iris Graphics 6100 integrated graphics card) and about 10 minutes on a
workstation (Intel Core i7-6900K at 3.2 GHz, 128 GB of RAM, nVidia GeForce GTX
1070 Ti graphics card).

The two scripts are almost identical: `6zhx_three-parts.cxc` generates separate
movies for the three parts of the whole animation, while `6zhx_full-movie.cxc`
generates a single movie with fading transitions between the three parts.

I posted the full movie [here](https://twitter.com/Guillawme/status/1379802108321538049).

## Figure panels

The script `6zhx_figure-2-EFG.cxc` generates panels E, F and G of figure 2 of
the article (with slight differences because it uses the deposited model, while
the article figure was prepared with a version of the model prior to deposition
that was subsequently subjected to more refinement). This took about 40 seconds
to run on the same laptop as described above, also not counting download time.
