#!/usr/bin/env bash

# Download entry EMD-13070 from EMDB
# with the procedure recommended at <https://www.wwpdb.org/ftp/pdb-ftp-sites>
rsync -rlpt -v -z --delete \
rsync.ebi.ac.uk::pub/databases/emdb/structures/EMD-13070/ ./EMD-13070

# Move main map to the directory containing the rest of the volume series
# and give it a consistent filename
mv ./EMD-13070/map/emd_13070.map.gz ./EMD-13070/other/emd_13070_additional_0.map.gz

# Uncompress all maps, since ChimeraX cannot (yet?) read compressed maps
# See <https://www.cgl.ucsf.edu/chimerax/docs/user/commands/open.html#compressed>
find ./EMD-13070 -type f -name '*.gz' -exec gunzip -k {} \;
