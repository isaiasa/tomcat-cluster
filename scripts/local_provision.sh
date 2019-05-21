sudo sed -i -e 's,    SendEnv LANG LC_*,#   SendEnv LANG LC_*,g' /etc/ssh/ssh_config
sudo service ssh restart
sudo apt-get update
sudo apt-get install -y language-pack-en
sudo update-locale LC_ALL=en_US.UTF-8
sudo update-locale LANGUAGE=en_US.UTF-8
sudo update-rc.d chef-client disable
sudo update-rc.d puppet disable

sudo apt-get -y install dos2unix

#Java install
sudo apt-get -y purge openjdk-\* icedtea-\* icedtea6-\*
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo dpkg --purge --force-depends ca-certificates-java
sudo apt-get -y install ca-certificates-java
sudo update-java-alternatives -s java-8-oracle
#export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
#export PATH=$PATH:$JAVA_HOME

sudo su -
cd /vagrant/
sh tomcat0/apache-tomcat-8.0.33/bin/startup.sh
sh tomcat1/apache-tomcat-8.0.33/bin/startup.sh





