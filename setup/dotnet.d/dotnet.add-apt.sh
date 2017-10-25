#!/bin/bash
# Add dot net deb feed.
# https://www.microsoft.com/net/core#linuxubuntu

if [-f /etc/apt/trusted.gpg.d/microsoft.gpg]; then :
  else
    echo "Need ms apt key"
    mkdir -p ~/temp/kscript
    wget https://packages.microsoft.com/keys/microsoft.asc -O ~/tmp/kscript/microsoft.gpg
    sudo mv ~/kscript/setup/dotnet/microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi

if [if /etc/apt/sources.list.d/dotnetdev.list]; then :
  else
    echo "Adding dotnet apt feed"
    ln -s ~/kscript/setup/dotnet/dotnetdev.list /etc/apt/sources.list.d/dotnetdev.list
fi

sudo apt-get update

sudo apt-get install dotnet-sdk-2.0.2
