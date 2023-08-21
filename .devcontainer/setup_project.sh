#!/bin/bash
set -ex
ddev config global --omit-containers=ddev-router
ddev debug download-images

# avoid errors on rebuilds
ddev poweroff

# start ddev project
ddev start -y


ddev composer install 
