# CentosServer

Dont get rid of usernames.txt. It is useful for the removal of users, and well as the creation.

Create users:
Begin by making each line of the usernames file contain an single word username for each user you want created.

use create_users.sh to make a user for every name you have in usernames.txt

The script will create those users, and give you an output users.txt, which contains the username:password pairs for your users to log in with. Every user's password must be reset upon first login.

Remove users:
as long as you still have usernames.txt file, just run the remove_users.sh script. You can customize which users get removed by editing the usernames.txt file, but dont forget to make a copy of the original before changing it.
