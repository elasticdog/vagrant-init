maintainer       "Wes Morgan"
maintainer_email "cap10morgan@gmail.com"
license          "Apache 2.0"
description      "Installs ack, a utility for quickly performing recursive searches of directory trees of text files (such as source code)."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"
recipe           "default", "Installs ack"

%w{redhat centos fedora debian ubuntu arch}.each do |os|
  supports os
end

attribute "ack",
  :display_name => "ack",
  :description => "Hash of ack attributes",
  :type => "hash"

attribute "ack/symlink_as",
  :display_name => "Symlink source path",
  :description => "What to symlink to /usr/bin/ack-grep on Debian/Ubuntu systems",
  :default => "/usr/local/bin/ack"

