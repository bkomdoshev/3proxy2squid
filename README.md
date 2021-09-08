# 3proxy2squid
##Script for convert 3proxy users list with plain password to squid users list with encrypted passwords

#!/bin/sh

cat /usr/local/etc/3proxypasswd | awk -F":CL:" '{print $1,$2}' | xargs -n 2 /usr/local/bin/htpasswd -b /usr/local/etc/squid/users

