What do I need to run this? 

Either VMWare fusion and the vagrant vmware plugin or Virtualbox (can be a bit slower, crash your OSX system).

Install vagrant and ansible (on OSX - `brew install vagrant ansible`) 

If usuing VMWare - you'll also need to follow the vmware plugin installation [instructions](https://www.vagrantup.com/docs/vmware/installation.html)

## Config

Substitute bryanhuntesl and/or add other users to users.yml. For each user, their corresponsponding github keys will be fetched - and the user added to the chroot jail - they will then be able to ssh/sftp/rsync to their hearts content but only within the chroot jail - other user accounts will be unaffected. Any user with a comment 'rsyncusers group' in the password file will be chrooted - the sshd config will also chroot any user in the 'rsyncusers' group if they attempt to login. The chroot directory is currently configured to '/home/chroot' (unimaginative I know, PR anyone).


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

```
vagrant up && ssh -p $(vagrant ssh-config | sed -n '/Port/{s_ __g;s_Port__;p;}') bryanhuntesl@127.0.0.1 
```
