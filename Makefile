# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#

all: cryptech dks-client-software.tgz

setup:
	${MAKE} -C sw/thirdparty/libressl
#	cd sw/HSM && ./getcryptech.sh

cryptech:
	${MAKE} -C CrypTech

dks:
	${MAKE} -C sw/pkcs11
	${MAKE} -C sw/client-side-tools

clean:
	./repo-clean.sh

.FORCE:


install: .FORCE
	cd sw/HSM && ./install-to-pi.sh

update: .FORCE
	cd pi && ./make-upgrade.sh

dks-client-software.tgz: dks
	./copy-client-software.sh

client: dks-client-software.tgz .FORCE
