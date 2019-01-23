#!/bin/sh
# Copyright (c) 2018, 2019 Diamond Key Security, NFP  All rights reserved.
#
# Prompt user for path and then copies the HSM files to that path
echo "The HSM software will be placed in a tarball."

export HSM_TEMP_PATH="updates/TEMP"
export HSM_SOFTWARE_PATH="$HSM_TEMP_PATH/HSM"

while true; do
    read -p "Enter the software update data(YYYY-MM-DD-VV): " UPDATEDATE
    export HSM_TARBALL_PATH="DKEY-HSM-UPDATE-$UPDATEDATE.tar.gz"
    read -p "Creating $HSM_TARBALL_PATH . Is this ok? (yn) " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) ;;
        * ) echo "Please answer yes or no.";;
    esac
done

export HSM_SOFTWARE_BUILD="sw/HSM/hsm_software"
mkdir -p $HSM_SOFTWARE_PATH 
rm -rf $HSM_SOFTWARE_PATH/* 
cp -R $HSM_SOFTWARE_BUILD/sw $HSM_SOFTWARE_PATH
cp -R $HSM_SOFTWARE_BUILD/binaries $HSM_SOFTWARE_PATH
cp -R $HSM_SOFTWARE_BUILD/defaults $HSM_SOFTWARE_PATH
cp -R $HSM_SOFTWARE_BUILD/pi/resources $HSM_TEMP_PATH
cp $HSM_SOFTWARE_BUILD/pi/initialize.py $HSM_TEMP_PATH
cp $HSM_SOFTWARE_BUILD/cryptech_muxd_server $HSM_SOFTWARE_PATH

find $HSM_TEMP_PATH -type f -name '*.pyc' -exec rm {} +

tar -zcvf updates/$HSM_TARBALL_PATH -C $HSM_TEMP_PATH HSM initialize.py resources
rm -rf $HSM_TEMP_PATH 