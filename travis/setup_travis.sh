#!/usr/bin/env bash

# https://www.mypdns.org/P14
# Don't use loop or array for simplicity, it will allow a broader
# ordinance to contribute.

# This script is to install requirements for running on Travis-CI

set -e #-x

# Variables
git_dir="$(git rev-parse --show-toplevel)"

# Get scripts

## The PyFunceble test script
## https://www.mypdns.org/P13
wget -qO "${git_dir}/dns-test.sh" \
  "https://www.mypdns.com/file/data/xncc6jx357z44smp4mwx/PHID-FILE-n47dr7m37udxsa73tpz2/pyfunceble_dns-test.sh"
  #"${SCRIPT_SOURCE_URI}/pyfunceble/dns-test.sh"

## The Recursor setup script
## https://www.mypdns.org/P12
wget -qO "${git_dir}/setup_recursor.sh" \
  "https://www.mypdns.com/file/data/mrkuy7efq4it5uupqcg7/PHID-FILE-i6n4bygwx24vy2z2kmga/recursor_setup_recursor.sh"
  #"${SCRIPT_SOURCE_URI}/recursor/setup_recursor.sh"

## The Miniconda setup script
## https://www.mypdns.org/P11
wget -qO "${git_dir}/setup_miniconda.sh" \
  "https://www.mypdns.com/file/data/qr7i7tnze2ifuogxd7aj/PHID-FILE-m5d2unz3aq2glpleb6hc/miniconda_setup_miniconda.sh"
  #"${SCRIPT_SOURCE_URI}/miniconda/setup_miniconda.sh"

## Get requirements
wget -qO "${git_dir}/requirements.txt" \
  "${SCRIPT_SOURCE_URI}/requirements.txt"


# Set chmod +x on scripts
## The PyFunceble test script
if [ -f "${git_dir}/dns-test.sh" ]
then
  chmod +x "${git_dir}/dns-test.sh"
else
	echo "The script dns-test.sh have failed to download"
	exit 2
fi

## The Recursor setup script
if [ -f "${git_dir}/setup_recursor.sh" ]
then
  chmod +x "${git_dir}/setup_recursor.sh"
else
	echo "The script setup_recursor.sh have failed to download"
	exit 2
fi

## The Miniconda setup script
if [ -f "${git_dir}/setup_miniconda.sh" ]
then
  chmod +x "${git_dir}/setup_miniconda.sh"
else
	echo "The script setup_miniconda.sh have failed to download"
	exit 2
fi


# Run Scripts
## Order matters!!!

### Install MiniConda
bash "${git_dir}/setup_miniconda.sh"

### Install the Recursor
bash "${git_dir}/setup_recursor.sh"



exit ${?}


# This program is free software: you can redistribute it and/or modify
# it under the terms of the modified GNU Affero General Public License as
# published by the My Privacy DNS, either version 3 of the
# License, or any later version released at
# https://www.mypdns.org/w/License.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# modified GNU Affero General Public License for more details.

# You should have received a copy of the modified GNU Affero General Public License
# along with this program. If not, see https://www.mypdns.org/w/License.

# The modification: The standard AGPLv3 have been altered to NOT allow
# any to generate profit from our work. You are however free to use it to any
# NON PROFIT purpose. If you would like to use any of our code for profiteering
# YOU are obliged to contact https://www.mypdns.org/ for profit sharing.
