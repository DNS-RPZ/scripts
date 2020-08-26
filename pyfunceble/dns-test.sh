#!/usr/bin/env bash

# This script is to run PyFunceble on Travis-CI

set -e

echo ""
echo ""

pyfunceble --version
echo ""
echo ""

echo ""

echo "Success We have done the initial loads"
echo "Of the dns-test script"
echo "Lets feed it with some real test string"
echo ""
echo ""

pyfunceble -f 'https://raw.githubusercontent.com/PyFunceble/ci_test/master/test.list' \
  --dns 127.0.0.1:5300 -h -a --idna --mining -ex --hierarchical -m \
  -db --database-type mariadb -dbr 0 --ci-branch "${TRAVIS_BRANCH}" \
  --ci --autosave-minutes 15 --share-logs 

echo ""
echo ""
echo "Did it looks right?"
echo ""
echo "Please report any issues at"
echo ""
echo "https://www.mypdns.org/maniphest/task/edit/form/1/"
echo ""



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
