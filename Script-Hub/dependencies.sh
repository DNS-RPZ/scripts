#!/usr/bin/env bash
# Dependencies Installer

# First we tell the CI we don't have a frontend
export DEBIAN_FRONTEND=noninteractive

# Let's install apt-fast
/bin/bash -c "$(curl -sL https://archive.mypdns.org/u/aptfastinstallscript)"

# Let's update the CI
apt-fast -y update && apt-fast -y upgrade

# Installing ldnsutils
apt-fast -y -i ldnsutils

# let's get rid of the fuckedup propritarian mysql*
apt-fast -y purge mysql*

# Make sure to install requirements for MariaDB connector script
apt-fast -i -y curl ca-certificates apt-transport-https

# Installing MariaDB connector
curl -LsS https://archive.mypdns.org/u/MariaDBconnector | \
    sudo bash -s --skip-maxscale

# Install the MariaDB packages we needs. We use force to ensure replacement
# of mysql client + common
#apt-fast -y install mariadb-server mariadb-client mariadb-backup
apt-fast -y -f -i mariadb-common mariadb-client mariadb-backup
