#!/bin/bash

set -e

git submodule add https://github.com/CESNET/libyang.git third_party/libyang
git submodule add https://github.com/sysrepo/sysrepo.git third_party/sysrepo

git submodule update --init --recursive