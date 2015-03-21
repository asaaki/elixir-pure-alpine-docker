#!/bin/sh
set -e

echo "Finalize ..."

apk del \
  build-base \
  perl

rm -rf /tmp/build

echo "- done."
