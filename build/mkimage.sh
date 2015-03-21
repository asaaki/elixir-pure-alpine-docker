#!/bin/sh
set -ex

export CC=gcc
export CXX=g++

./install-packages.sh
./install-erlang.sh
./install-rebar.sh
./install-elixir.sh
./finalize.sh
