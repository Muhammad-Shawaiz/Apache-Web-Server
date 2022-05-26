
#!/bin/sh

apt update
apt install apache2 -y
systemctl start apache2
systemctl enable apache2
ufw allow 'Apache'
ufw allow 'ssh'
ufw status
ufw enable
cd /var/www/html
rm index.html
git clone https://github.com/HasanNaser/My-Personel-Website
cp -r /var/www/html/My-Personel-Website/* .
rm -rf My-Personel-Website/
cd /etc/apache2/sites-available
cp /etc/apache2/sites-available/000-default.conf  /etc/apache2/sites-available/page.conf
sed -i -e 's/#ServerName www.example.com/ServerName www.bbb.com/'  /etc/apache2/sites-available/page.conf
sed -i -e 's/ServerAdmin webmaster@localhost/ServerAdmin ahmed@bbb.com/' /etc/apache2/sites-available/page.conf
a2dissite 000-default.conf
a2ensite page.conf
systemctl reload apache2
echo "$(hostname -I)  www.bbb.com  bbb.com " >> /etc/hosts
