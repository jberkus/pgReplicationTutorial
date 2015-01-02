#!/bin/bash

# stop postgres
service postgresql stop

# copy configuration files
mv /var/lib/postgresql/9.4/main /var/lib/postgresql/9.4/master
cp /setup/postgres/master/* /var/lib/postgresql/9.4/master/
mkdir /var/lib/postgresql/9.4/master/conf.d
cp /setup/postgres/pgbouncer.ini /etc/pgbouncer/
cp /setup/postgres/userlist.txt /etc/pgbouncer/
cp /setup/postgres/pgbouncer.default /etc/default/pgbouncer
chown -R postgres /etc/pgbouncer

# create the archiving and replica directories
mkdir /var/lib/postgresql/wal_archive
mkdir /var/lib/postgresql/9.4/replica1
mkdir /var/lib/postgresql/9.4/replica2
chown -R postgres /var/lib/postgresql/*
chmod 700 /var/lib/postgresql/9.4/replica1
chmod 700 /var/lib/postgresql/9.4/replica2

#link pg_ctl and friends
ln -s /usr/lib/postgresql/9.4/bin/pg_ctl /usr/bin/pg_ctl
ln -s /usr/lib/postgresql/9.4/bin/initdb /usr/bin/initdb
#ln -s /usr/lib/postgresql/9.4/bin/pg_archivecleanup /usr/bin/pg_archivecleanup

# restart postgresql
su - postgres -c "/usr/bin/pg_ctl -w -D /var/lib/postgresql/9.4/master start"

# load the libdata database
psql -U postgres -f /setup/postgres/libdata.users.sql postgres
pg_restore -e -U postgres -d libdata /setup/postgres/libdata.dump
# load a postGIS database
#pg_restore -e -U postgres -O -x -d earth /setup/postgres/earth.dump

exit 0
