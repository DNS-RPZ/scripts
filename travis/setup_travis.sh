#!/usr/bin/env bash

# https://www.mypdns.org/P14
# Don't use loop or array for simplicity, it will allow a broader
# ordinance to contribute.

# This script is to install requirements for running on Travis-CI

set -e

# Variables
git_dir="$(git rev-parse --show-toplevel)"

#SCRIPT_SOURCE_URI: 'https://raw.githubusercontent.com/dns-test/script-hub/master/'

## Temponary code to distribute issue template start

mkdir -p "${git_dir}/.github/ISSUE_TEMPLATE/"

wget 'https://raw.githubusercontent.com/dns-test/domain-tester-template/master/.github/ISSUE_TEMPLATE/config.yml' \
  -O "${git_dir}/.github/ISSUE_TEMPLATE/config.yml"

## Temponary code to distribute issue template end

# Get scripts

echo "Downloading scrips"

## The PyFunceble test script
wget -qO "${git_dir}/dns-test.sh" \
  "${SCRIPT_SOURCE_URI}/pyfunceble/dns-test.sh"
  #"${SCRIPT_SOURCE_URI}/z4dehwq7vszedlpntwyg/PHID-FILE-d7wx5euz4gqfkdieuikw/dns-test.sh"
  

## The Recursor setup script
wget -qO "${git_dir}/setup_recursor.sh" \
  "${SCRIPT_SOURCE_URI}/recursor/setup_recursor.sh"
  #"https://www.mypdns.org/source/script-hub/browse/master/recursor/setup_recursor.sh?view=raw"
  

## The Miniconda setup script
## This needs to b run from the .travis.yml :(
  

## Get requirements
wget -qO "${git_dir}/requirements.txt" \
  "https://www.mypdns.org/source/script-hub/browse/master/requirements.txt?view=raw"


## Get .travis.yml to obtain changes
wget -qO "${git_dir}/.travis.yml" \
  "${SCRIPT_SOURCE_URI}/.travis.yml.bak"

cat "${git_dir}/.travis.yml"

# Set chmod +x on scripts

echo "Chmod scripts"

## The PyFunceble test script
if [ -f "${git_dir}/dns-test.sh" ]
then
  chmod +x "${git_dir}/dns-test.sh"
else
	echo ""
	echo "The script dns-test.sh have failed to download"
	echo "See setup_travis.sh"
	echo ""
	exit 2
fi

## The Recursor setup script
if [ -f "${git_dir}/setup_recursor.sh" ]
then
  chmod +x "${git_dir}/setup_recursor.sh"
else
	echo ""
	echo "The script setup_recursor.sh have failed to download"
	echo "See setup_travis.sh"
	echo ""
	exit 2
fi

# Run Scripts
## Order matters!!!

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
