Description
===========

A template for provisioning any new [Vagrant](http://vagrantup.com/)
project that will will install a core set of useful packages as well as
personal dotfiles. It uses [Chef Solo](http://vagrantup.com/docs/provisioners/chef_solo.html)
and includes support for using [`knife`](http://wiki.opscode.com/display/chef/Knife)
commands with the local _cookbooks/_ directory.

The installed packages include:

* ack
* ctags
* curl
* git
* htop
* lsof
* mercurial
* tmux
* tree
* rbenv (with ruby-build)
* vim
* zsh

Many of these come directly from the [Opscode Community Cookbooks](http://community.opscode.com/cookbooks)
and were installed using the [knife cookbook site commands](http://wiki.opscode.com/display/chef/Managing+Cookbooks+With+Knife#ManagingCookbooksWithKnife-CookbookSite).

Usage
=====

Make sure you have a Vagrant box named "_base_" (it can be whatever Linux
distro you choose), and you should be good to clone this repo and go:

    $ vagrant box list
    base
    $ git clone git://github.com/elasticdog/vagrant-init.git myproject
    $ cd myproject/
    $ vagrant up

Attributes
----------

Everything should be customized based on your requirements, as this is
only meant as a initial template and it's fairly specific to my own
preferred workflow. You can edit the provided `Vagrantfile` to set
attributes for your own dotfiles repository.

* `node['dotfiles']['repository']` - the git repository to clone
* `node['dotfiles']['enable_submodules']` - if your repository uses
submodules or not
* `node['dotfiles']['shell']` - the default shell for the `vagrant` user

All of the included packages are specified in the `vagrant_main`
cookbook's default recipe, so start there if you want to make changes.

`knife` Metadata
----------------

When using the `knife` command, the contents of the generated cookbook
README and metadata files are configurable by editing _&lt;myproject&gt;/.chef/knife.rb_.
See `knife cookbook create --help` for details.

Requirements
============

Platform
--------

* Arch Linux
* Debian, Ubuntu
* CentOS, Red Hat, Fedora

If something isn't working properly for your platform, let me know and
I'll try and fix things up.

User
----

The recipes currently assume that your VM is using the standard `vagrant`
user with a home directory of _/home/vagrant_. If that becomes a problem
I'll make it customizable with JSON attributes.

rbenv
-----

The _rbenv_ installation is specific to the `vagrant` user (it is **not**
system-wide), so you may have to adjust your `$PATH` environment variable
to include `${HOME}/.rbenv/bin` when using your own dotfiles.

License
=======

Copyright (c) 2011, [Aaron Bull Schaefer](mailto:aaron@elasticdog.com)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
