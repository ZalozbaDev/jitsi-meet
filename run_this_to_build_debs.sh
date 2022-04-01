#!/bin/bash

echo 'Run "npm install" at least once.'
make
dpkg-buildpackage -A -rfakeroot -us -uc -tc -d

echo "=================================================="
echo ".deb files are now in parent folder"

echo "You need to copy the relevant ones to the docker-jitsi-meet repo for including them into the container."

