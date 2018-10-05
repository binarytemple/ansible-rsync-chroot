Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  r = Random.new                                                                                                                               
  ssh_port = r.rand(1000...5000)                                                                                                               
  config.vm.network "forwarded_port", guest: 22, host: "#{ssh_port}", id: 'ssh', auto_correct: true                                            

  config.vm.provision :ansible do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.compatibility_mode = "2.0"
      # uncomment if you don't want delay of yum install/update/check
      # ansible.skip_tags = "installs"
  end
end
