#!/bin/bash
if [ -x dotnet ]; 
  then 
    echo "dotnet already installed"; 
  else 
  #https://www.microsoft.com/net/core#linuxubuntu
    echo "install dotnet";
    ~/kscript/setup/dotnet/dotnet.add-apt.sh
fi