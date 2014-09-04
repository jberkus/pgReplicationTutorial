#!/usr/bin/env bash

echo 'starting provisioning'

# setup apt-get to pull from apt.postgresql.org

echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main 9.3" > /etc/apt/sources.list.d/pgdg.list
wget -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

# update apt
apt-get update
apt-get -y -q install pgdg-keyring

# install postgresql and a bunch of accessories
apt-get -y -q install postgresql-client-9.3
apt-get -y -q install postgresql-9.3
apt-get -y -q install postgresql-contrib-9.3
apt-get -y -q install postgresql-plpython-9.3
apt-get -y -q install pgbouncer

# install PostGIS
apt-get -y -q install postgresql-9.3-postgis-2.1

# install alternate editor and tmux
apt-get -y -q install joe
apt-get -y -q install tmux

/setup/dbprep.sh

echo ''
echo 'vagrant loaded and ready for tutorial'
echo 'version 0.3 of pgReplicationTutorial environment'
echo 'now with PostGIS!'

exit 0




