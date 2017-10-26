if [ -f /etc/apt/trusted.gpg.d/microsoft.gpg ]
  then
    echo "key already installed"
  else
    echo "installing key"
    curl https://packages.microsoft.com/keys/microsoft.asc > ~/tmp/microsoft.gpg
    sudo mv ~/tmp/microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi


