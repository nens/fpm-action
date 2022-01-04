#!/bin/bash
set -e
set -u

# Github automatically places us in $GITHUB_WORKSPACE as our working dir and
# mounts the existing workspace in it.
VERSION=`cat version.txt`

# All the other fpm options should go into `.fpm`.
fpm --version=${VERSION}
