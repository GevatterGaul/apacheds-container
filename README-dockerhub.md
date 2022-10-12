# Image Description

This image runs the [ApacheDS](https://directory.apache.org/apacheds/) LDAP and Kerberos server.

# Usage

```bash
docker run -d --name apacheds -p 389:389 gevattergaul/apacheds
```

# Image Details

The image is based on the current [Alpine](https://hub.docker.com/_/alpine) release.

# Versioning

The tags follow the ApacheDS naming scheme with an added build number: For version "2.0.0.AM26" the tag name will be "2.0.0.AM26-0" for the first build, "2.0.0.AM26-1" for the second and so on.

# Data persistance

ApacheDS will store its data in '/opt/apacheds/instances'. So you could mount a volume or a bind mount there.

# Resources

I wrote a blogpost explaining the [ApacheDS docker container](https://boredconsultant.com/2020/09/27/ApacheDS-LDAP-Server-on-Docker-with-Ansible/).

I published the [source code of the ApacheDS docker container](https://github.com/GevatterGaul/apacheds-container) on GitHub.
