#!/usr/bin/env bash

# https://www.mypdns.org/P11
# Version options:
# pyfunceble
# pyfunceble-dev
# PyFunceble@raw2sqlalchemy

Pyfunceble_version="PyFunceble@raw2sqlalchemy"

export PATH="${HOME}/miniconda/bin:${PATH}"

if [[ "${TRAVIS_OS_NAME}" == "osx" ]]
then
	wget 'https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh' \
	  -O miniconda.sh
else
	wget 'https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh' \
	  -O miniconda.sh
fi

bash miniconda.sh -b -p ${HOME}/miniconda
hash -r
conda config --set always_yes yes --set changeps1 no
conda config --add channels conda-forge
conda update -q conda
conda create -q -n test-environment python="${PYTHON_VERSION}"
conda init shells bash
source '${HOME}/miniconda/etc/profile.d/conda.sh'
conda activate test-environment
python --version --version
pip --version
conda --version
#pip uninstall -y pyfunceble pyfunceble-dev
pip install --no-cache-dir --upgrade dnspython[dnssec,idna]
pip install --no-cache-dir -U "git+https://github.com/funilrys/${Pyfunceble_version}"
# pip install --no-cache-dir --upgrade pyfunceble-dev
# pip install git+https://github.com/funilrys/PyFunceble.git@dev

pyfunceble --version

rm -f miniconda.sh

## We do not install ultimate-hosts-blacklist-whitelist(-dev) as we like
## to know everything. And whitelisting should be set as user defined
## desires via categorizing:
## https://github.com/Ultimate-Hosts-Blacklist/dev-center/issues/50#issuecomment-667511820
#
## All whitelisting should also be a individual choice, never from a
## central predefined decision. That is democracy.


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
