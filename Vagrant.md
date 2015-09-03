Vagrant Instructions
====================

These are installation instructions for participants who are, for whatever reason,
unable to use Docker.

Alternative: Installing the Base Software: Vagrant
==================================================

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

Installing the Virtual Machine Image: Vagrant
=============================================

Once you've installed Vagrant and VirtualBox, you'll need to get an
operating system image, or "box".  Please download one of the following
large files:

If you have a 64-bit laptop: http://files.vagrantup.com/precise64.box

If you have a 32-bit laptop: http://files.vagrantup.com/precise32.box

Then run the following command from the folder where you downloaded it:

* 64-bit: vagrant box add precise precise64.box
* 32-bit: vagrant box add precise precise32.box

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