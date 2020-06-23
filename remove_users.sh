#!/bin/bash

cat usernames.txt | while read i; do
        userdel -r "$i"
done

rm users.txt
