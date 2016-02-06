#! /bin/bash

clear

echo "Installing Web Server Applications"
echo "============================================================"
echo ""

INSTALL_APACHE="apache2"
INSTALL_DKMS="dkms"
INSTALL_VIM="vim"
INSTALL_PHP5="php5 libapache2-mod-php5 php5-cli php5-cgi"
INSTALL_MYSQL="mysql-server php5-mysql"
INSTALL_POSTGRESQL="postgresql php5-pgsql"
INSTALL_CURL="curl libcurl3 libcurl3-dev php5-curl"
INSTALL_SVN="svn"
INSTALL_GIT="git-all"

# Install Apache
sudo apt-get install -y $INSTALL_APACHE

# Fix Apache Error: "Could not reliably determine the server's fully qualified domain name?"
echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/fqdn.conf
sudo a2enconf fqdn
service apache2 restart

# Install Base Development Apps
sudo apt-get install -y $INSTALL_VIM $INSTALL_DKMS $INSTALL_PHP5 $INSTALL_MYSQL $INSTALL_POSTGRESQL $INSTALL_CURL $INSTALL_SVN $INSTALL_GIT

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

echo ""
echo ""
echo ""
echo "Installing Node Development Applications"
echo "============================================================"
echo ""


INSTALL_RUBY="ruby-full"
INSTALL_NODE="nodejs"
INSTALL_GRUNT="grunt-cli"
INSTALL_BOWER="bower"

# Install NODE
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y $INSTALL_RUBY $INSTALL_NODE

# Install Grunt CLI
sudo npm install -g $INSTALL_GRUNT $INSTALL_BOWER





