#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo " please run this script with root user access"
    exit 1
fi
  
echo "insatalling Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installing nginx ... FAILURE"
    exit 1

else
    echo "Installing nginx ... SUCCESS"
fi 

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "installing mysql ... FAILURE"
    exit 1
else
    echo "Installing mysql ... SUCCESS"
fi 

dnf install nodejs -y
if [ $? -ne 0 ]; then
    echo "installing nodejs ... FAILURE"
    exit 1
else
    echo "Installing nodejs ... SUCCESS"
fi 