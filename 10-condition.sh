#!bin/bash/

read -p "Enter username: " user

if [ "$user" == "root" ]; then
  echo "Admin user"
else
  echo "Normal user"
fi
