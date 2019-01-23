#!/bin/sh
# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#
# repo-reset.sh
# This shell script will attempt to reset the current repo to the last commit
# and delete all changes
set -x # echo on
git clean -dfx
git submodule foreach --recursive git clean -df --exclude=certs/ -x # don't remove certs folder if this instance has created one
git submodule foreach --recursive git reset --hard
git reset --hard