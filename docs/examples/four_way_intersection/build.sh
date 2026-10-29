#!/usr/bin/env sh
set -eu

# Generates the traffic-light-controlled network from the editable source files.
netconvert \
  --node-files four_way.nod.xml \
  --edge-files four_way.edg.xml \
  --output-file four_way.net.xml
