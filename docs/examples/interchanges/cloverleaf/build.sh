#!/usr/bin/env sh
set -eu

netconvert \
  --node-files cloverleaf.nod.xml \
  --edge-files cloverleaf.edg.xml \
  --connection-files cloverleaf.con.xml \
  --output-file cloverleaf.net.xml
