
sh /vagrant/tomcat0/apache-tomcat-8.0.33/bin/shutdown.sh
sh /vagrant/tomcat1/apache-tomcat-8.0.33/bin/shutdown.sh


sh /vagrant/tomcat0/apache-tomcat-8.0.33/bin/startup.sh
sh /vagrant/tomcat1/apache-tomcat-8.0.33/bin/startup.sh
tail -200f /vagrant/tomcat0/apache-tomcat-8.0.33/logs/catalina.out
