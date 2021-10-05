#!/usr/bin/env bash

ffmpeg \
    -framerate 2 \
    -i umap_graph-traversal_frame_%02d.png \
    -r 30 \
    umap_graph-traversal-movie_red-dots.mp4
