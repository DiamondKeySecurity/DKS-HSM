DKS-HSM
Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.


Parent project to build all DKS-HSM products and required dependencies.
All sub-projects projects are stored as git submodules. This project will pull
the Cryptech stm32 and libhal branches from the DKS forked repos and will
build the firmware.

-------------------------------------------------------------------------------
Dependencies
-------------------------------------------------------------------------------

For LibreSSL:
sudo apt-get install automake autoconf libtool perl

For pkcs11 and HSM software:
sudo apt-get install python yaml
sudo python -m pip install enum34
sudo python -m pip install zeroconf==0.19.1
sudo python -m pip install netifaces

For stm32
sudo apt-get install gcc-arm-none-eabi gdb-arm-none-eabi

For tamper
sudo apt-get install gcc-avr binutils-avr avr-libc

-------------------------------------------------------------------------------
Building the Project
-------------------------------------------------------------------------------
After all of the required dependencies have been installed, 'make' can be
used to build the project.

'make setup'   - 'make setup' will clone all submodules and build LibreSSL.
                This is very time-consuming and shouldn't need to be run often. 

'make'         - 'make' will build the raspberry pi and host computer applications.

'make install' - 'make install' will copy the raspberry pi software to an SD card.

--------------------------------------------------------------------------------
Move to GitHub
--------------------------------------------------------------------------------
All of Diamond Key Security's git repositories were previously hosted on Gitlab.
On September 24, 2019, they were moved to GitHub. Because of this, all commits
in the CrypTech and DKS-HSM repositories before September 25, 2019 are no longer
valid because they have submodules that refer to repositories on Gitlab that can
no longer be accessed.
