pgReplicationTutorial
=====================

This repository contains files for the PostgreSQL Binary
Replication tutorial.

These files are required to perform the hands-on exercises.
Importantly, there is significant setup required in order to
do the hands-on exercises which needs to happen _before_ the
tutorial starts, so please read the below.

**All steps through Vagrant Up / Docker Pull should be completed before
getting to the tutorial**

Requirements
=============

Laptop Harware:

* running Linux, OSX, or Windows XP or later
* 64-bit (32-bit may be possible, see below)
* at least 1GB of RAM, 2GB or more preferred
* 300MB free disk space

Software and Wetware:

* terminal program capable of ssh
* familiarity with the bash/linux command line
* familiarity with one or more command-line text editors
* vagrant and virtualbox (see below) OR Docker 1.4.0 or later

Vagrant vs. Docker
==================

Docker is the recommended platform for running the execises, because it
is much easier to set up, and requires far less system resources to run
when you're taking the tutorial.  However, using Docker does require:

* A Linux laptop, with Linux kernel 3.8 or later
* Package lxc-docker installed running version 1.4 or later

While Docker can be run on Windows and Mac desktops using boot2docker and other
mechnisms, we recommend that such users use the Vagrant version instead.

If you are using Docker, skip down to the Docker Installation below and
proceed from there.

Installing the Base Software: Vagrant
=====================================

First, you will need to install Vagrant and VirtualBox if you do not
already have them.  If you do already have them, please make sure that
you have at least these minimum versions:

* Vagrant 1.4.1 or later
* VirtualBox 4.2 or later

Otherwise, you're going to need to install them.  Fortunately, both have
downloads for most OSes and extensive documentation.  And when you get
used to them, you'll find Vagrant an invaluable tool for testing.

Vagrant Installation:

* https://docs.vagrantup.com/v2/installation/
* https://docs.vagrantup.com/v2/getting-started/

VirtualBox Installation:

* https://www.virtualbox.org/wiki/Downloads
* https://www.virtualbox.org/wiki/End-user_documentation

Installing Tutorial Exercises: Vagrant
======================================

Install the tutorial exercises on your machine one of two
ways:

**Preferred Method**: Git Checkout from the Github repo. The
repository is here: https://github.com/jberkus/pgReplicationTutorial,
and you can clone it by:

    git clone https://github.com/jberkus/pgReplicationTutorial.git

**Alternate Method**: if you're not comfortable with git, download
the tarball from:

    https://dl.dropboxusercontent.com/u/5132935/pgReplicationTutorial.tgz

This will require the programs "tar" and "gzip" to expand, as follows:

    tar -p -xvf pgReplicationTutorial.tgz

We apologize for not providing a "zip" formatted archive, but zip does not
preserve file permissions, which would cause issues.

The ReplicationTutorial directory should be placed somewhere
you have disk space available.

Vagrant Up
==========

The first time you do vagrant up, it will require an internet connection
with significant bandwidth and around 1/2 hour.  As such, you should do
it at home, before you get to the conference or the tutorial.

Open your terminal program. Navigate to pgReplicationTutorial/vagrant
directory. Type the following:

    vagrant up

This will launche the precise box (VM), install a bunch of software on
it, and start it up.  You will see some brief errors during the startup, many of them in relation to not having a tty. 
Only errors which involve more than 4 lines of errors in a row are significant; others can be ignored. 
Verify that you can log into it with:

    vagrant ssh

Now log out with "exit".  Shut down the VM, but leave it set up in preparation
for the tutorial:

    vagrant suspend
    
Docker Installation
===================

The Docker image for this tutorial is 64-bit and was built with Docker 1.4.1.
If you are on a 32-bit machine, or if you are limited to using Docker 1.3 or older,
I recommend that you scroll back up and follow the Vagrant install instructions
instead.

First pull the image:

    docker pull jberkus/pgreplicationtutorial
    
While a pull is sufficient, I suggest that you test the image by doing:

    docker run -it --rm jberkus/pgreplicationtutorial
    
This should log you into a command prompt as root.  If you type "exit" the container
will halt and erase itself.
    

Other Files In This Package
===========================

The pgReplicationTutorial package also contains the following files
in the Tutorial directory:

exercises.txt
-------------

This is a set of commands which you will be running during the hands-on
exercises for the tutorial.  These are provided in a text file so that
you can copy & paste, instead of trying to read every letter and dash
from the instructor's screen.

pgReplicationTutorial.odt/pdf
-----------------------------

These are copies of the slides for the tutorial.

ChangeLog
=========

**0.5.1** multiple fixes to Docker image.

**0.5** Added PostgreSQL 9.4 replication slots to the tutorial as exercise.  Added some additional tuning and configuration portions.

**0.4** Version produced for LinuxConf.AU 2015.  Removes PostGIS exercises.  Upgrades to PostgreSQL 9.4.  Adds Docker support.

**0.3** Version produced for FOSS4G 2014.  Includes information about replicating PostGIS.  Interactive "play" demonstrations have  have been removed due to their time-consuming nature.

**0.2** Initial version produced for DjangoCon 2013.

License
=======

The pgReplicationTutorial is Copyright 2013-2014 Josh Berkus
and PostgreSQL Experts Inc.

All slides, text, instructions and similar content in this tutorial are
licensed [Creative Commons Attribution-ShareAlike 3.0]
(http://creativecommons.org/licenses/by-sa/3.0/us/)

Code exercises, virtual machines, containers and sample databases 
are licensed under the
[Gnu Public License Version 2]
(http://www.gnu.org/licenses/gpl-2.0.html)

All other rights reserved.
