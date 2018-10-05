Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      # uncomment if you don't want delay of yum install/update/check
      # ansible.skip_tags = "installs"
  end
end
