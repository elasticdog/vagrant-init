package "ack" do
  case node[:platform]
  when "centos","redhat","fedora","arch"
    package_name "ack"
  when "debian","ubuntu"
    package_name "ack-grep"
  end
  action :install
end

execute "create symlink" do
  case node[:platform]
  when "debian","ubuntu"
    if !node[:ack][:symlink_as].nil? && node[:ack][:symlink_as].length > 0
      command "ln -nsf /usr/bin/ack-grep #{node[:ack][:symlink_as]}"
      creates "#{node[:ack][:symlink_as]}"
    end
  end
end
