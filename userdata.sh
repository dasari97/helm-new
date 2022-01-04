#!/bin/bash

#Enter user username here
user= 
#Enter your password here
password= 

##adding user to instance owner 
id owner &>>$LOG
if [ $? -eq 0 ]; then
    echo "User already there, So Skipping" &>>$LOG
else
    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
    useradd "$user" -m -p "$pass" &>>$LOG
fi

sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/ig' /etc/ssh/sshd_config
systemctl restart sshd  