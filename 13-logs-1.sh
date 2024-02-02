#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE() {

    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2 ...$R FAILED $N"
        exit 1
    else
        echo "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1
else
   echo "You are root user"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing Git"