if [ -f /etc/apt/sources.list.d/dotnetdev.list ]
  then
    echo "feed installed"
  else
    echo "installing feed"
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-zesty-prod zesty main" > ~/tmp/dotnetdev.list
    sudo mv ~/tmp/dotnetdev.list /etc/apt/sources.list.d/dotnetdev.list

    sudo apt update
fi
