#!/usr/bin/env sh
set -eu

netconvert \
  --node-files split_directional.nod.xml \
  --edge-files split_directional.edg.xml \
  --output-file split_directional.net.xml
