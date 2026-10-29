#!/usr/bin/env sh
set -eu

netconvert \
  --node-files cloverleaf.nod.xml \
  --edge-files cloverleaf.edg.xml \
  --output-file cloverleaf.net.xml
