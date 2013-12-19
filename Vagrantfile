# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'berkshelf/vagrant'

Vagrant.configure("2") do |global_config|
  global_config.berkshelf.enabled = true
  global_config.vm.box = "precise64"
  global_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  global_config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 1024]
  end
  global_config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
  global_config.vm.synced_folder 'D:\Workspaces\Test\BEBUI0000_Example_Website', '/home/apps/app1/current', :create => true
  global_config.vm.provision :shell, :path => "configure.sh"
  global_config.vm.provision :chef_solo do |chef|
    chef.json = {
      "run_list" => ["cookbook_phpbox"],
      "appbox" => {
        "deploy_keys" => ["ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAp4GGUNTgz/r9ya2LlBF/7XwbKXJELqPi7YFmlU4Pcvgi4p/hQp0XqlU8EHVLetoTLK4rtjNh4vb4m3tZ5LFLfM7Pqh9YBNoTyUw/wXoZ2CaL9ydIbv9En7FZRzCLM9MiXBA9lOjEeijx1AzNt8suVZ3qJomcdV5+5iLsy2nMpMnJ1MdoFlSPE9lwNm9kndOg+y+qGjYZ0nrg6NBvZaiXtbNZQTZWkLh3ZIAFqW9gerbBR8YAGnQbWF3Jx1uDlWDX9Qph5/iH9/ZxeUwYeZidwpvfifom/TPgRDSEDR+rSXyOof2OvnZRoR2SizKNq1Di5hyqLqRH3HhNz3QDjIpZ6Q== ToMo@MININT-575DU2B"],
        "admin_keys" => ["ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAp4GGUNTgz/r9ya2LlBF/7XwbKXJELqPi7YFmlU4Pcvgi4p/hQp0XqlU8EHVLetoTLK4rtjNh4vb4m3tZ5LFLfM7Pqh9YBNoTyUw/wXoZ2CaL9ydIbv9En7FZRzCLM9MiXBA9lOjEeijx1AzNt8suVZ3qJomcdV5+5iLsy2nMpMnJ1MdoFlSPE9lwNm9kndOg+y+qGjYZ0nrg6NBvZaiXtbNZQTZWkLh3ZIAFqW9gerbBR8YAGnQbWF3Jx1uDlWDX9Qph5/iH9/ZxeUwYeZidwpvfifom/TPgRDSEDR+rSXyOof2OvnZRoR2SizKNq1Di5hyqLqRH3HhNz3QDjIpZ6Q== ToMo@MININT-575DU2B"]
      },
      "databox" => {
        "db_root_password" => "EeZl4y@%ASrk"
      },
      "cookbook_phpbox" => {
        "webserver" => "apache2",
        "apps" => [
          {
            "appname" => "app1",
            "hostname" => "localhost"
          }
        ]
      }
    }
  end
end