#!/bin/sh
set -e

echo "Installing Elixir ..."

ELIXIR=elixir
ELIXIR_VERSION=1.1.1
ELIXIR_PACKAGE=v$ELIXIR_VERSION
ELIXIR_PACKAGE_DIR=elixir-$ELIXIR_VERSION
ELIXIR_ARCHIVE=$ELIXIR_PACKAGE.tar.gz
ELIXIR_DOWNLOAD=https://github.com/elixir-lang/elixir/archive/$ELIXIR_ARCHIVE

mkdir -p $ELIXIR
cd $ELIXIR
  curl -sSL -o $ELIXIR_ARCHIVE $ELIXIR_DOWNLOAD
  tar xfz $ELIXIR_ARCHIVE

cd $ELIXIR_PACKAGE_DIR
  find ../../_$ELIXIR -name '*.patch' -exec patch -p1 -N -s -i {} \;
  make
  make install

mix local.hex --force
mix local.rebar --force

echo "- done."
