#!/bin/bash

NUMBER=$1 

#-gt --> greater than
#-lt --> less than
#-eq --> equal to
#-ne --> not equal to


if [ $NUMBER -lt 50 ]
then 
    echo "Given number $NUMBER is greater than 50"
else 
   echo "Given number $NUMBER is not greater than 50"

    fi 