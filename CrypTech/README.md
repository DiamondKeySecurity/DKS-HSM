-------------------------------------------------------------------------------
Copyright (c) 2018, Diamond Key Security, NFP
All rights reserved.
-------------------------------------------------------------------------------

The CrypTech folder contains git repositories original developed by CrypTech
for the CrypTech hardware security module alpha board. The code has been modified
as need by Diamond Key Security, NFP. Modified code will contain both the
required CrypTech copyrights of NORDUnet A/S and Diamond Key Security.

-------------------------------------------------------------------------------
LibreSSL

The OpenBSD project developed LibreSSL from a fork of OpenSSL 1.0.1g. It comes
with a new additional TLS library, libtls, which was designed to simplify the
creation of applications that use TLS. The Diamond Key Security changes require
LibreSSL. LibreSSL can be installed to any folder on the computer, but the
appropriate C include and library paths most be set. The LibreSSL Portable
git repository has been included as a submodule in the DKS/DKS-HSM repository.

-------------------------------------------------------------------------------
libcli

libcli is distributed with the Lesser GNU Public License (LGPL). This license
is more restrictive than the BSD 3-Clause License used by CrypTech and
Diamond Key Security. According to the README.md file in the Cryptech/sw/stm32
repository, CrypTech is working to get a BSD compatibles license. Because of
this, this project points to the CrypTech version of the libcli repository.

-------------------------------------------------------------------------------

Building CrypTech projects

A Makefile has been provided to build the including CrypTech projects.
To build all of the projects, the following dependencies will need to be
installed.

apt-get install python-yaml python-serial python-crypto python-ecdsa
apt-get install gcc-arm-none-eabi gdb-arm-none-eabi
apt-get install gcc-avr binutils-avr avr-libc