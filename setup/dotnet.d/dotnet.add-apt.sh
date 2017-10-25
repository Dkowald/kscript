#!/bin/bash
# Add dot net deb feed.
# https://www.microsoft.com/net/core#linuxubuntu

if [ -f /etc/apt/trusted.gpg.d/microsoft.gpg ]; then echo "key already installed" 
  else
    echo "Need ms apt key"
    mkdir -p ~/temp/kscript
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
    #wget https://packages.microsoft.com/keys/microsoft.asc -O ~/temp/kscript/microsoft.gpg
    #sudo mv ~/temp/kscript/microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi

if [ -f /etc/apt/sources.list.d/dotnetdev.list ]; then echo "feed already installed"
  else
    echo "Adding dotnet apt feed"
    sudo cp ~/kscript/setup/dotnet.d/dotnetdev.list /etc/apt/sources.list.d/dotnetdev.list
fi

sudo apt-get update

sudo apt-get install dotnet-sdk-2.0.2
