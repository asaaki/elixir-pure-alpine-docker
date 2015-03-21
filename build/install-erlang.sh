#!/bin/sh
set -e

echo "Installing Erlang ..."

ERLANG=erlang
OTP_VERSION=17.4
OTP_PACKAGE=otp_src_$OTP_VERSION
OTP_ARCHIVE=$OTP_PACKAGE.tar.gz
OTP_DOWNLOAD=http://www.erlang.org/download/$OTP_ARCHIVE

mkdir -p $ERLANG
cd $ERLANG
  curl -sSLO $OTP_DOWNLOAD
  tar xfz $OTP_ARCHIVE

cd $OTP_PACKAGE
  find ../../_$ERLANG -name '*.patch' -exec patch -p1 -N -s -i {} \;
  export ERL_TOP=`pwd`
  ./configure --disable-hipe
  make
  make install

echo "- done."
