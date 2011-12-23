Description
===========

Installs ack, a utility for quickly performing recursive searches of directory
trees of text files (such as source code).

On Debian-based platforms (e.g. Ubuntu), it creates a symlink in /usr/local/bin
called 'ack' so you don't have to type 'ack-grep' to run it. You can change this
behavior by setting the [:ack][:symlink_as] attribute.

Requirements
============

## Platforms:

* Debian
* Ubuntu
* Red Hat/CentOS/Fedora
* ArchLinux

Attributes
==========

* `node[:ack][:symlink_as]` - What to symlink to /usr/bin/ack-grep. Debian/Ubuntu only.
