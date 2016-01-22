# ProjectZomboid-docker

files\Zomboid folder on the host needs to be owned by a user with the same credentials as the Steam user in the container.
```
$ groupadd -g 1500 steam
$ useradd -g 1500 steam
$ cd files\
$ chown steam:steam Zomboid
```
