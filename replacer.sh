#!/bin/bash

rm -rf sync-tasks
sed -e "s/CONSULADDR/$1/g" -e "s/BIGIPADDR/$2/g" -e "s/PASSWD/$3/g" config.hcl.template > config.hcl