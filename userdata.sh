#!/bin/bash

#Enter user username here
user= 
#Enter your password here
password= 

#creating files to redirect logs 
touch /tmp/log
##adding user to instance owner 
id $user &>>/tmp/log
if [ $? -eq 0 ]; then
    echo "User already there, So Skipping" &>>/tmp/log
else
    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
    useradd "$user" -m -p "$pass" &>>/tmp/log
fi

sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/ig' /etc/ssh/sshd_config
systemctl restart sshd