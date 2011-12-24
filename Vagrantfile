# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe('vagrant_main')

    chef.json.merge!({
      :dotfiles => {
        :repository => "git://github.com/elasticdog/dotfiles.git",
        :enable_submodules => true,
        :shell => '/bin/zsh'
      }
    })
  end
end
