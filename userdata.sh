#!/bin/bash
##shell script or userdata for Linux instance to add a user.
#Enter your username here
name= 
#Enter your password here
password= 

#creating files to redirect logs 
touch /tmp/log
##adding user to instance. 
id "$name" &>>/tmp/log
if [ $? -eq 0 ]; then
    echo "User already there, So Skipping" &>>/tmp/log
else
    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
    useradd "$name" -m -p "$pass" &>>/tmp/log
    ##IF you want the user to be a sudoer, the uncomment this line
    #sed -i -e "100 a $name  ALL=(ALL)       NOPASSWD: ALL" /etc/sudoers
    
fi
#this command is used to enable password login into the Instance.

sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/ig' /etc/ssh/sshd_config
systemctl restart sshd
##check the file /tmp/log for output details.
