#!/bin/bash

# If
#   (not within Vagrant Guest OS) and (not within Travis)
# then
#    exit 1

if [ `facter virtual` == "virtualbox" ];
then
    BASEDIR=/vagrant
elif [ `whoami` == "travis" ];
then
    BASEDIR=`pwd`
else
    echo The command should be executed within the guest OS!
    exit 1
fi

WHOAMI=`whoami`

echo "Initialize WHOAMI: ${WHOAMI}"
echo "Initialize BASEDIR: ${BASEDIR}"

#sudo mkdir -p /vagrant/app/cache
#sudo mkdir -p /vagrant/app/logs
#sudo mkdir -p /vagrant/app/cache/sessions
#sudo mkdir -p /vagrant/vendor

#sudo chmod -R 0777 /app/symfony2app
#sudo chown -R "${WHOAMI}:${WHOAMI}" /app/symfony2app

#cd /vagrant
#composer install

#sudo chmod -R 0777 /app/symfony2app
#sudo chown -R "${WHOAMI}:${WHOAMI}" /app/symfony2app