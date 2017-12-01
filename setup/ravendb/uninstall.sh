
#stop the service
sudo systemctl stop ravendb

#unlink the service
sudo systemctl disable ravendb

#get rid of service cfg
rm /etc/systemd/system/ravendb.service