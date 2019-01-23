-------------------------------------------------------------------------------
Copyright (c) 2018, Diamond Key Security, NFP
All rights reserved.
-------------------------------------------------------------------------------
Third party libraries used by the Diamond Key Security software.

LibreSSL

The OpenBSD project developed LibreSSL from a fork of OpenSSL 1.0.1g. It comes
with a new additional TLS library, libtls, which was designed to simplify the
creation of applications that use TLS. The Diamond Key Security changes require
LibreSSL. LibreSSL can be installed to any folder on the computer, but the
appropriate C include and library paths most be set. The LibreSSL Portable
git repository has been included as a submodule in the DKS/DKS-HSM repository.

The repository included is LibreSSL portable. LibreSSL is developed for
OpenBSD, but using autoconf. The packages automake, autoconf, git, libtool,
and perl must be installed on the system. LibreSSL also provides release
distributions for those that are unable to build from source. See the
README.md file in the LibreSSL folder.