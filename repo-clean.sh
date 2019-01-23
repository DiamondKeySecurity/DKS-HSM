#!/bin/sh
# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#

# repo-clean.sh
# This shell script will attempt to clean the repo and submodules of all
# untracked files
set -x # echo on
git clean -dfx
git submodule foreach --recursive git clean -df --exclude=certs/ -x # don't remove certs folder if this instance has created one