#!/bin/bash 
USERID=$(id -u)
if [ $USERID -ne 0 ]; then 
    echo "ERROR ::Please run this script with root priveleges"
fi
dnf install mysql -y 
if [ $? -ne 0 ]; then
    echo "ERROR :: installing Mysql is failure "
else
    echo " Installing Mysql is SUCCESS"
fi
