#https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-syncthing-to-synchronize-directories-on-ubuntu-14-04

if [ -f /user/local/bin/syncthing ]
  then
    echo "already have installed version"
    exit 1;
fi

cd ~/
release=https://github.com/syncthing/syncthing/releases/download/v0.14.39/syncthing-linux-amd64-v0.14.39.tar.gz
wget $release

tar xzvf syncthing*.tar.gz
cd syncthing*

sudo cp syncthing /usr/local/bin

cd ~/
rm -rf syncthing*

