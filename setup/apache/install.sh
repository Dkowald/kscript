sudo apt-get install apache2

sudo ln -s /lib/systemd/system/apache2@.service apache2@kwd.service
sudo systemctl deamon-reload

sudo mkdir /etc/apache2-kwd
sudo cp ~/kscript/setup/apache/apache2.conf /etc/apache2-kwd/

sudo systemctl start apache2@kwd

sudo systemctl status apache2@kwd

sudo systemctl enable apache2@kwd