#!/bin/bash

######################################
#Use usernames.txt to remove the users that were created with create_users.sh

cat usernames.txt | while read i; do
        userdel -r "$i"
done

#####################################
#Remove the user:password pairs file, named users.txt.

rm users.txt
