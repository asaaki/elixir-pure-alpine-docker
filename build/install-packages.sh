#!/bin/sh
set -e

echo "Installing Packages ..."

apk --update add \
      build-base \
      perl \
      ncurses-libs \
      ncurses-dev \
      sed \
      git \
      curl \
      wget \
      openssl \
      openssl-dev \
      bash

echo "- done."
