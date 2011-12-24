maintainer       "Aaron Bull Schaefer"
maintainer_email "aaron@elasticdog.com"
license          "MIT"
description      "Installs/Configures vagrant_main"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ ack dotfiles gems git htop mercurial tmux vim zsh }.each do |cookbook|
  depends cookbook
end
