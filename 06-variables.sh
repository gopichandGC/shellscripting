#!/bin/bash
# USERNAME=$1
# PASSWORD=$2

# echo "Username is: $USERNAME, Password is: $PASSWORD"
echo "Please enter your username:: "
#read USERNAME
read -s USERNAME
echo "Please enter your Password:: "
#read PASSWORD
read -s PASSWORD # The value entered above will be automatically attached to username variable
echo "Username is: $USERNAME, Password is: $PASSWORD"