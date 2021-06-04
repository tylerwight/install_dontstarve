#!/bin/sh
#Install don't starve dedicated server
#Tyler Wight
#
sudo adduser starve
sudo usermod -aG sudo starve
sudo apt-get update -y && sudo apt-get upgrade -y

#adding multiverse required to install cmd on 64 bit machines

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt-get install lib32gcc1
sudo apt-get install lib32stdc++6
sudo apt-get install libcurl4-gnutls-dev:i386
sudo apt-get update -y
sudo apt install lib32gcc1 steamcmd -y
sudo ln -s /usr/games/steamcmd steamcmd
sudo mkdir /mnt/starve
sudo chown -R starve:starve /mnt/starve
sudo su -c "steamcmd +login anonymous +force_install_dir /mnt/starve +app_update 343050 validate +exit" -s /bin/sh starve


#once finished you need to generate game files by visiting https://klei.com/account/game/list
#this will generate a game token that is required for the game to go live. This whole folder goes to  ~/.klei/DoNotStarveTogether/Cluster_1
#then start the server by running  the  dontstarve_dedicated_server_nullrenderer in  bin folder
