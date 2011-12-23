case platform
when "debian","ubuntu"
  default[:ack][:symlink_as] = '/usr/local/bin/ack'
end
