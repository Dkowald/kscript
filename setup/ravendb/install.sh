#add service config (chage to link?)
cp ravendb.service /etc/systemd/system/ravendb.service

#refresh deamon info
sudo systemctl daemon-reload

#enable  the service
sudo systemctl enable ravendb

#start the service
sudo systemctl start ravendb

#check status
systemctl status ravendb.service