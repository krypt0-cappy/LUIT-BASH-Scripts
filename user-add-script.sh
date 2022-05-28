#!/bin/bash
# Purpose - Script to add a user to Linux system including passsword
# ------------------------------------------------------------------
# Am i Root user?
userfile=/home/cloud_user/Projects/LUIT-BASH-Scripts/userlist
username=$(cat /home/cloud_user/Projects/LUIT-BASH-Scripts/userlist | tr 'A-Z' 'a-z')
password=$username@123
for user in $username
do
useradd -m $username
echo $password | passwd --stdin $username
done
echo "$(wc -l /home/cloud_user/Projects/LUIT-BASH-Scripts/userlist) users has been created"
tail -n$(wc -l /home/cloud_user/Projects/LUIT-BASH-Scripts/userlist) /etc/passwd
