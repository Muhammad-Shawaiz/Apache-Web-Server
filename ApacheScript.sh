
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo ufw allow 'Apache'
sudou fw allow 'ssh'
sudo ufw enable
cd /var/www/html
sudo rm index.html
sudo git clone https://github.com/HasanNaser/My-Personel-Website
sudo cp -r /var/www/html/My-Personel-Website/* .
sudo rm -rf My-Personel-Website/
cd /etc/apache2/sites-available
sudo cp /etc/apache2/sites-available/000-default.conf  /etc/apache2/sites-available/page.conf
sudo sed -i -e 's/#ServerName www.example.com/ServerName www.bbb.com/'  /etc/apache2/sites-available/page.conf
sudo sed -i -e 's/ServerAdmin webmaster@localhost/ServerAdmin ahmed@bbb.com/' /etc/apache2/sites-available/page.conf
sudo a2dissite 000-default.conf
sudo a2ensite page.conf
sudo systemctl reload apache2
sudo chmod 674 /etc/hosts
echo "$(hostname -I)  www.bbb.com  bbb.com " >> /etc/hosts
sudo chmod 644 /etc/hosts
