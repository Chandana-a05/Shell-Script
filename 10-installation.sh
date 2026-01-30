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

dnf install Mysql -y

if [ $? -ne 0 ]; then
    echo "installing Mysql ... FAILURE"
    exit 1
else
    echo "Installing Mysql ... SUCCESS"
fi 

dnf install node.js -y
if [ $? -ne 0 ]; then
    echo "installing node.js ... FAILURE"
    exit 1
else
    echo "Installing node.js ... SUCCESS"
fi 