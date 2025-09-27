#!/bin/bash 
USERID=$(id -u)
if [ $USERID -ne 0 ]; then 
    echo "ERROR ::Please run this script with root priveleges"
    exit 1 #failure is other than 0 
fi
VALIDATE(){ #function recevie inputs through args just like shell scripts args 
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 is failure"
        exit 1
    else 
        echo "Installing $2 is SUCCESS"
    fi

}

dnf install mysql -y 
VALIDATE $? "MYSQL"

dnf install nginx -y 
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "python3" 