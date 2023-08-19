#!/bin/bash

# Set initial time of the last file update
INTIAL_LAST_MODIFICATION_TIME=`stat -c %Z $1`

while true
do
# Check time of the last time update
   LAST_MODIFICATIO_TIME=`stat -c %Z $1`

# Execute command, If file has changed
   if [[ "$LAST_MODIFICATIO_TIME" != "$INTIAL_LAST_MODIFICATION_TIME" ]]
   then
       $2
       INTIAL_LAST_MODIFICATION_TIME=$LAST_MODIFICATIO_TIME
   fi
   sleep ${3:-5}
done
