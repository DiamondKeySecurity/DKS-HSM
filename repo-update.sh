#!/bin/sh
# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#
# repo-update.sh
# This shell script will attempt to update all submodules
set -x # echo on
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull