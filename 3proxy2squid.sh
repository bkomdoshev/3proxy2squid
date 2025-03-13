#!/bin/sh

cat /usr/local/etc/3proxypasswd | awk -F":CL:" '{print $1,$2}' | xargs -n 2 /usr/local/bin/htpasswd -b /usr/local/etc/squid/users