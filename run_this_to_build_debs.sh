#!/bin/bash

echo "Check the documentation in lang/README.md (on Github) how to update the translation files."
echo "e.g. cd lang && node update-translation.js main-hsb.json"
echo
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "Validate JSON format after update, before building!"
echo "Use an online validator like: https://jsonformatter.org/"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo

echo 'Run "npm install" at least once.'
make
dpkg-buildpackage -A -rfakeroot -us -uc -tc -d

echo "=================================================="
echo ".deb files are now in parent folder"

echo "You need to copy the relevant ones to the docker-jitsi-meet repo for including them into the container."

