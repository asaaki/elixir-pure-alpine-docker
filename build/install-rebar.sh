#!/bin/sh
set -e

echo "Installing Rebar ..."

REBAR=rebar
REBAR_VERSION=2.5.1
REBAR_DOWNLOAD=https://github.com/rebar/rebar/releases/download/$REBAR_VERSION/rebar
REBAR_BIN_PATH=/usr/local/bin/$REBAR

[ -f $REBAR_BIN_PATH ] || (
  curl -sSL -o $REBAR_BIN_PATH $REBAR_DOWNLOAD && \
  chmod +x $REBAR_BIN_PATH
)

echo "- done."
