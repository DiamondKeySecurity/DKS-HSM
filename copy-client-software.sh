#!/bin/sh
# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#
export HSM_SOFTWARE_PATH="client-software"
export HSM_SOFTWARE_BUILD="sw/client-side-tools"
export HSM_SOFTWARE_BUILD_BIN="${HSM_SOFTWARE_BUILD}/bin"
export DKEY_INSTALL="install"
export HSM_PKCS11_BUILD="sw/pkcs11"
mkdir -p $HSM_SOFTWARE_PATH 
rm -rf $HSM_SOFTWARE_PATH/*

cp -R $DKEY_INSTALL/* $HSM_SOFTWARE_PATH

cp -R $HSM_SOFTWARE_BUILD/findHSM $HSM_SOFTWARE_PATH
cp -R $HSM_SOFTWARE_BUILD_BIN/dks_setup_console $HSM_SOFTWARE_PATH
cp -R $HSM_SOFTWARE_BUILD_BIN/dks_cryptech_backup $HSM_SOFTWARE_PATH
cp -R $HSM_PKCS11_BUILD/libcryptechdks-pkcs11.so $HSM_SOFTWARE_PATH
tar cvfz dks-client-software.tgz $HSM_SOFTWARE_PATH/