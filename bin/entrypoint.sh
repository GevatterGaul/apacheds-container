#!/bin/bash

mkdir -p /opt/apacheds/instances/default/cache
mkdir -p /opt/apacheds/instances/default/conf
mkdir -p /opt/apacheds/instances/default/log
mkdir -p /opt/apacheds/instances/default/partitions
mkdir -p /opt/apacheds/instances/default/run

# We move the config files at most once, because apacheds might delete them
# during runtime. If we copy them again, this might result in an error.
if [ -e /opt/apacheds/config.ldif.default ];
then
  if [ ! -e /opt/apacheds/instances/default/conf/config.ldif_migrated ]; 
  then
    mv /opt/apacheds/config.ldif.default /opt/apacheds/instances/default/conf/config.ldif
  else
    rm /opt/apacheds/config.ldif.default
  fi
fi

if [ ! -e /opt/apacheds/instances/default/conf/log4j.properties ] && [ -e /opt/apacheds/log4j.properties.default ]; 
then
  mv /opt/apacheds/log4j.properties.default /opt/apacheds/instances/default/conf/log4j.properties
fi

/opt/apacheds/bin/apacheds.sh run