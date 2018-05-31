cd steamcmd
sudo wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
sudo tar -xvzf steamcmd_linux.tar.gz
./steamcmd.sh +login STEAM_ID_FOR_SERVER PASSWORD +force_install_dir ../ark +app_update "376030 validate" +quit
sudo rm steamcmd_linux.tar.gz