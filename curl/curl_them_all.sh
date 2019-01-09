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
  curl -i -s -D -o /dev/null -X OPTIONS "https://$url" -m 5 | head
 echo "================================================"
 echo -e '\n'
done
