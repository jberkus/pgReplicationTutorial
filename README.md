pgReplicationTutorial
=====================

This repository contains files for the PostgreSQL Binary
Replication tutorial.

These files are required to perform the hands-on exercises.
Importantly, there is significant setup required in order to
do the hands-on exercises which needs to happen _before_ the
tutorial starts, so please read the below.

**All steps through Vagrant Up / Docker Pull should be completed before
getting to the tutorial.  The tutorial will not include any help on getting these
systems running.**

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
* vagrant and virtualbox (see below) OR Docker 1.5.0 or later

Vagrant vs. Docker
==================

Docker is the recommended platform for running the execises, because it
is much easier to set up, and requires far less system resources to run
when you're taking the tutorial.  However, using Docker does require:

* A Linux laptop, with Linux kernel 3.8 or later
* Package lxc-docker installed running version 1.5 or later

OR:

* A windows or Mac laptop running the Docker Toolbox or Kitematic

[Docker Toolbox](https://www.docker.com/toolbox) is available from Docker. 
We are not able to provide detailed instructions or assistance on configuring
Docker Toolbox on Windows or Mac.  The Toolbox page, however, has an excellent
tutorial.

If you are unable to get Docker working, or are simply more comfortable 
with Vagrant, then please see the Vagrant instructions in Vagrant.md.
    
Docker Installation
===================

The Docker image for this tutorial is 64-bit and was built with Docker 1.7.1.
If you are on a 32-bit machine, or if you are limited to using Docker 1.4 or older,
I recommend that you scroll back up and follow the Vagrant install instructions
instead.

If you're working on Windows or OSX, you'll need to run commands using the 
Docker Terminal which is a part of the Docker Toolbox.

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

**0.6** Updated for Postgres Open 2015.  PostGIS removed to shrink image.  Docker instructions provided
as primary recommended option.

**0.5.1** multiple fixes to Docker image.

**0.5** Added PostgreSQL 9.4 replication slots to the tutorial as exercise.  Added some additional tuning and configuration portions.

**0.4** Version produced for LinuxConf.AU 2015.  Removes PostGIS exercises.  Upgrades to PostgreSQL 9.4.  Adds Docker support.

**0.3** Version produced for FOSS4G 2014.  Includes information about replicating PostGIS.  Interactive "play" demonstrations have  have been removed due to their time-consuming nature.

**0.2** Initial version produced for DjangoCon 2013.

License
=======

The pgReplicationTutorial is Copyright 2013-2015 Josh Berkus
and PostgreSQL Experts Inc.

All slides, text, instructions and similar content in this tutorial are
licensed [Creative Commons Attribution-ShareAlike 3.0]
(http://creativecommons.org/licenses/by-sa/3.0/us/)

Code exercises, virtual machines, containers and sample databases 
are licensed under the
[Gnu Public License Version 2]
(http://www.gnu.org/licenses/gpl-2.0.html)

All other rights reserved.
