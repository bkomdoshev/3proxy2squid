# 3proxy2squid
##Script for convert 3proxy users list with plain password to encrypted squid users list

#!/bin/sh

cat 3proxypasswd | awk -F":CL:" '{print $1,$2}' | xargs -n 2 /usr/local/bin/htpasswd -b /usr/local/etc/squid/users

