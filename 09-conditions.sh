#!/bin/bash

NUMBER=$1 

#-gt --> greater than
#-lt --> less than
#-eq --> equal to
#-ne --> not equal to


if [ $NUMBER -lt 10 ]
then 
    echo "Given number $NUMBER is less than 10"
else 
   echo "Given number $NUMBER is greater than or equal  to 10"

    fi 