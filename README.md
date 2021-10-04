# Visualizations made with ChimeraX

This repository contains [ChimeraX][chimerax] command files that generate images
or movies of molecular structures from the [PDB][pdbe] and/or [EMDB][emdb]. Each
script or set of scripts is in a directory named after the [PDB][pdbe] or
[EMDB][emdb] entry used to generate the visualization.

I will update this repository whenever I produce a visualization worth sharing
(and from publicly available data).

All of these scripts download files from the [PDB][pdbe] and [EMDB][emdb] into
`~/Downloads/ChimeraX`. They also save one or more movie files and a ChimeraX
session file (`.cxs`, containing the last state after making movies) in the
directory from where ChimeraX was started before running the script (if you
started ChimeraX from a desktop icon, application launcher or menu item, these
files will probably be written in `~/Desktop`). They can take a long time to
run, and often mobilize a fair amount of resources. Each visualization's
directory contains a README file explaining how much time the corresponding
script took to complete on the computer I ran it on.

All ChimeraX command files in this repository are meant to be run in an empty
session, so the recommended way to run them is as follows (in which `<VIZ>` is
the directory of the visualization you want to generate and `<script.cxc>` is
the command file):

```
cd /path/to/this/repo/<VIZ>
chimerax --exit <script.cxc>
```

The `--exit` option offers a slightly faster startup by preventing ChimeraX from
checking for updates and doing other things only necessary for an interactive
session, and makes ChimeraX quit upon completion of the command file, so you get
your shell prompt back.


[chimerax]: https://www.cgl.ucsf.edu/chimerax

[pdbe]: https://www.ebi.ac.uk/pdbe

[emdb]: https://www.ebi.ac.uk/pdbe/emdb

