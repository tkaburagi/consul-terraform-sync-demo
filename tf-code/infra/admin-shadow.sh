#!/bin/sh
# generate sha512 encrypted password
openssl passwd -1 -salt f5f5 $1 > admin.shadow
