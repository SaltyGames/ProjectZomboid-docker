#!/bin/bash
/home/steam/steamcmd/steamcmd.sh \
    +login anonymous \
    +force_install_dir /home/steam/steamcmd/ProjectZomboid \
    +app_update 380870 \
    +quit

~/steamcmd/ProjectZomboid/start-server.sh
