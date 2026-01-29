#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0]; then
    echo " please run this script with root user access"
    exit 1
fi

    echo "insatalling Nginx"
    dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "installing nginx ... FAILURE"
    exit 1

elif
    echo "Installing nginx ... SUCCESS"
fi