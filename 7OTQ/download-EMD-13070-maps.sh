#!/usr/bin/env bash

# Download entry EMD-13070 from EMDB
# with the procedure recommended at <https://www.wwpdb.org/ftp/pdb-ftp-sites>
rsync -rlpt -v -z --delete \
rsync.ebi.ac.uk::pub/databases/emdb/structures/EMD-13070/ ./EMD-13070

# Move main map to the directory containing the rest of the volume series
# and give it a consistent filename
mv ./EMD-13070/map/emd_13070.map.gz ./EMD-13070/other/emd_13070_additional_00.map.gz

# Zero-pad index of some files so they make up the volume series in correct order
mv ./EMD-13070/other/emd_13070_additional_1.map.gz ./EMD-13070/other/emd_13070_additional_01.map.gz
mv ./EMD-13070/other/emd_13070_additional_2.map.gz ./EMD-13070/other/emd_13070_additional_02.map.gz
mv ./EMD-13070/other/emd_13070_additional_3.map.gz ./EMD-13070/other/emd_13070_additional_03.map.gz
mv ./EMD-13070/other/emd_13070_additional_4.map.gz ./EMD-13070/other/emd_13070_additional_04.map.gz
mv ./EMD-13070/other/emd_13070_additional_5.map.gz ./EMD-13070/other/emd_13070_additional_05.map.gz
mv ./EMD-13070/other/emd_13070_additional_6.map.gz ./EMD-13070/other/emd_13070_additional_06.map.gz
mv ./EMD-13070/other/emd_13070_additional_7.map.gz ./EMD-13070/other/emd_13070_additional_07.map.gz
mv ./EMD-13070/other/emd_13070_additional_8.map.gz ./EMD-13070/other/emd_13070_additional_08.map.gz
mv ./EMD-13070/other/emd_13070_additional_9.map.gz ./EMD-13070/other/emd_13070_additional_09.map.gz

# Uncompress all maps, since ChimeraX cannot (yet?) read compressed maps
# See <https://www.cgl.ucsf.edu/chimerax/docs/user/commands/open.html#compressed>
find ./EMD-13070 -type f -name '*.gz' -exec gunzip -k {} \;
