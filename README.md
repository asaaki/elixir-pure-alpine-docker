# FROM asaaki/elixir-pure-alpine

[![docker hub](https://img.shields.io/badge/docker-image-blue.svg?style=flat-square)](https://registry.hub.docker.com/u/asaaki/elixir-pure-alpine/)

Docker image for pure Erlang/Elixir projects build on a minimal Alpine Linux (base: gliderlabs/alpine)

More info about the base: <https://github.com/gliderlabs/docker-alpine>

# Pure?

_pure_ means that the `build-base` package (GCC + some libraries) is removed.
Therefore no Erlang or Elixir packages which require C code compilation (i.e. NIFs) are supported.

If you need them you have to (re)add this package again. Keep in mind that this will make your docker container bigger again (and you could just use [asaaki/elixir-alpine](https://github.com/asaaki/elixir-alpine-docker) instead).

Of course you can follow the same approach like here and use a build script which adds the package, builds your project and then remove the package again to reduce the unnecessary cruft (the compiler is not needed in runtime).
