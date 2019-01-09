#!/bin/bash
 #simple is ample
 #hillary soita
 #@bit3c0de -> twitter
 red=`tput setaf 1`
 green=`tput setaf 2`
 reset=`tput sgr0`
for url in $(cat alldomains.txt) 
do
 echo "================================================"
 echo "===  $(tput setaf 1)Curl output for: $url$(tput sgr0)  ==="
 echo "================================================"
#check it site is https
 if wget --spider https://$url 2>/dev/null; then
 curl -i -s -D -o /dev/null -X OPTIONS "https://$url" -m 5 | head
 echo "================================================"
 echo -e '\n'
#if site is http
else
 curl -i -s -D -o /dev/null -X OPTIONS "http://$url" -m 5 | head
 echo "================================================"
 echo -e '\n'
fi
done
