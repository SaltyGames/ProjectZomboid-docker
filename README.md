# Project Zomboid

Container for hosting a Project Zomboid multiplayer server.

## Configuration files

Configuration and save files will be created in files/Zomboid folder when the server is started first time. Check the location of the Zomboid folder on the hosts matches the location in the pz_docker.sh script. For me the folder is at /root/ProjectZomboid-docker/files/Zomboid sso my script looks like

```
docker run -it -p 16261 -p 8766 -p 8767 -p 16262-16272 -v /root/ProjectZomboid-docker/files/Zomboid:/home/steam/Zomboid pz:latest
```

The Zomboid folder on the host needs to be owned by a user with the same credentials as the Steam user in the container.
```
$ groupadd -g 1500 steam
$ useradd -g 1500 steam
$ cd files\
$ chown steam:steam Zomboid
```

files/Zomboid/Server/[servername].ini is the main configuration file for the server.


##Ports
16261(tcp/udp) - Server
8766 - 8767 - Steam
16262-16362 - Clients 

##Usage

```
$ docker build -t pz:latest .
$ ./pz_docker.sh
```

The pz_docker.sh script will run the  


