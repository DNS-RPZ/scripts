#!/usr/bin/env bash

# https://www.mypdns.org/P14
# Don't use loop or array for simplicity, it will allow a broader
# ordinance to contribute.

# This script is to install requirements for running on Travis-CI

set -e #-x

# Variables
git_dir="$(git rev-parse --show-toplevel)"

#SCRIPT_SOURCE_URI: 'https://www.mypdns.org/source/sh/browse/master'

# Get scripts

echo "Downloading scrips"

## The PyFunceble test script
wget -qLO "${git_dir}/dns-test.sh" \
  "${SCRIPT_SOURCE_URI}/pyfunceble/dns-test.sh?view=raw"
  #"${SCRIPT_SOURCE_URI}/pyfunceble/dns-test.sh"

## The Recursor setup script
wget -qLO "${git_dir}/setup_recursor.sh" \
  "${SCRIPT_SOURCE_URI}/recursor/setup_recursor.sh?view=raw"
  #"${SCRIPT_SOURCE_URI}/recursor/setup_recursor.sh"

## The Miniconda setup script
wget -qLO "${git_dir}/setup_miniconda.sh" \
  "${SCRIPT_SOURCE_URI}/miniconda/setup_miniconda.sh?view=raw"
  #"${SCRIPT_SOURCE_URI}/miniconda/setup_miniconda.sh"

## Get requirements
wget -qO "${git_dir}/requirements.txt" \
  "${SCRIPT_SOURCE_URI}/requirements.txt?view=raw"


# Set chmod +x on scripts

echo "Chmod scripts"

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

echo "Running Miniconda setup"
bash "${git_dir}/setup_miniconda.sh"

### Install the Recursor
echo "Running Recursor setup"
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
