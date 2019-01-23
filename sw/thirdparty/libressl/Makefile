# Copyright (c) 2018, Diamond Key Security, NFP
# All rights reserved.

DKS_ROOT := $(abspath ../../..)

LIBRESSL_SRC := ${DKS_ROOT}/sw/thirdparty/libressl-portable
LIBRESSL_BLD := ${DKS_ROOT}/sw/thirdparty/libressl

setup:
	cd ${LIBRESSL_SRC} && sh autogen.sh && ./configure --prefix="${LIBRESSL_BLD}" CFLAGS="-fPIC"
	patch -d ${LIBRESSL_SRC}/apps < apps.Makefile.patch
	${MAKE} -C ${LIBRESSL_SRC}
	${MAKE} -C ${LIBRESSL_SRC} install