#!/usr/bin/env bash

echo 'starting provisioning'

cp -rp /import /setup
chmod -R +rx /setup

# install wget

apt-get update
apt-get -y -q install wget

# setup apt-get to pull from apt.postgresql.org

echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main 9.4" > /etc/apt/sources.list.d/pgdg.list
wget -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

# update apt
apt-get update
apt-get -y -q install pgdg-keyring

# install some basics
apt-get -y -q install libreadline-dev
apt-get -y -q install less

# install postgresql and a bunch of accessories
apt-get -y -q install postgresql-client-9.4
apt-get -y -q install postgresql-9.4
apt-get -y -q install postgresql-contrib-9.4
apt-get -y -q install postgresql-plpython-9.4
apt-get -y -q install pgbouncer

# install PostGIS
#apt-get -y -q install postgresql-9.4-postgis-2.1

# install alternate editor and tmux and other utilities
apt-get -y -q install joe
apt-get -y -q install tmux

echo ''
echo 'container loaded and ready for tutorial'
echo 'version 0.4 of pgReplicationTutorial environment'
echo 'now with 9.4 and docker support'

exit 0




