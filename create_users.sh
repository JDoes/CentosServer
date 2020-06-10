#!/bin/bash

########################
#Use apg to create user:password pairs, based on the usernames.txt file,
#and output that as a file named users.txt

cat usernames.txt | while read i; do
        echo -n "$i:"
        apg -n1
done > users.txt

#########################
#Create the users from the users.txt file, which is the user:password pairs
#There is no reason this could not also be done using usernames.txt, I suppose.
#cat will read users.txt and cut field 1 with the ":" as the delimeter

cat users.txt | cut -d ":" -f 1 | while read i; do
        adduser -m "$i"
done

########################
#Use the users.txt file, with the username:password pairs, to set the passwords
#of the users made in the previous step

cat users.txt | chpasswd

#########################
#Set the password age to zero for each user, from the users.txt file, so they
#have to reset their password at first login

cat users.txt | cut -d ":" -f 1 | while read i; do
        chage -d 0 "$i"
done