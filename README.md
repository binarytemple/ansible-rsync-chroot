What do I need to run this? 

Either VMWare fusion and the vagrant vmware plugin or Virtualbox (can be a bit slower, crash your OSX system).

Install vagrant and ansible (on OSX - `brew install vagrant ansible`) 

If usuing VMWare - you'll also need to follow the vmware plugin installation [instructions](https://www.vagrantup.com/docs/vmware/installation.html)

## Running

Port conflicts often prevent the provisioning step from exectuting during the initial `vagrant up` - in this case you will need to bring the host up, then provision it e.g. 

1. `vagrant up`
2. `vagrant provision`

## testing 

```
vagrant ssh
```

```
chroot --userspec=bryanhuntesl:rsyncusers /home/chroot 
```

## verifying 

vagrant provision && ssh bryanhuntesl@172.16.149.143


