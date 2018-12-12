#!/bin/bash
 #simple is ample
 #hillary soita
 #@bit3c0de -> twitter
for url in $(cat alldomains.txt) 
do 
  if curl --output /dev/null --head --silent --fail "$url"; then
    echo "------------------------------------------------"
    echo "Valid URL: $url"
    echo "------------------------------------------------"
#    echo -e "\n"
  else
    echo "------------------------------------------------"
    echo "$(tput setaf 1)Invalid URL$(tput sgr0): $url"
    echo "------------------------------------------------"
#    echo -e "\n"
  fi 
done
