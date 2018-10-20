#!/bin/bash

xinput --disable $(xinput --list | egrep -io "AIT.+Touch.+id=([0-9]+)" | awk '{print substr($4,length($4)-0)}')
