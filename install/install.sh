#!/bin/sh
# Copyright (c) 2019  Diamond Key Security, NFP
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 2
# of the License only.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, If not, see <https://www.gnu.org/licenses/>.
export HSM_SOFTWARE_BIN="/usr/bin"
export HSM_SOFTWARE_LIB="/usr/lib"
export HSM_SOFTWARE_CONF="/etc/dkey/hsm"
cp findHSM $HSM_SOFTWARE_BIN
cp dks_setup_console $HSM_SOFTWARE_BIN
cp dks_cryptech_backup $HSM_SOFTWARE_BIN
cp libcryptechdks-pkcs11.so $HSM_SOFTWARE_LIB
cp hsm.conf $HSM_SOFTWARE_CONF