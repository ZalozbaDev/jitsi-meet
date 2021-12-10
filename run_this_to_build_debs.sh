#!/bin/bash

echo 'Run "npm install" at least once.'
make
dpkg-buildpackage -A -rfakeroot -us -uc -tc -d

echo "=================================================="
echo ".deb files are now in parent folder"

