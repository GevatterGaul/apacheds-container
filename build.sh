#!/bin/sh

wget https://downloads.apache.org//directory/apacheds/dist/2.0.0.AM26/apacheds-2.0.0.AM26.tar.gz
tar -xzf apacheds-2.0.0.AM26.tar.gz
mv apacheds-2.0.0.AM26 apacheds
rm -rf apacheds/instances
mkdir apacheds/instances
docker build -t apacheds:latest .
