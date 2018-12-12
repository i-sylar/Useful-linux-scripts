#!/bin/bash
#############################################
############ Script by Hillary ##############
#############################################

# + Prints your username
# + The time and date
# + Who is logged on
# + also output a line of asterices (*******) after each section
 
# function to display a line of asterices
n=0
function line(){
 echo "*************************"
}

function from(){
	n=3
	echo From: ${!n}
}
function active_user(){
	#echo $(wc -l (w -h| awk '{print $1}' | grep $(echo $USER)))
	echo $(w -h| awk '{print $1}')|grep $USER | wc -w
}
function from_ip(){
	echo $(w -h | grep $(echo $USER) | awk '{print $3}')
}
function last(){
	#echo $(w | grep $USER | awk '{print $9}' | xargs)
	echo $(w -h| grep $USER | awk '{print $9}' | cut -d @ -f 1)
}
 
echo "Logged in user:"
active_user
line
 
echo "Logged in from:"
from_ip
line

echo "Last line:"
last
line

if [ "$(active_user)" -gt 1 ]; then
	echo 'More than one active sessions'
	#ps -U $USER | egrep -v "ssh" | awk '{print $2}' | xargs -t kill
	#echo "Sessions have all been killed"
else
	echo 'Only one active session'
fi