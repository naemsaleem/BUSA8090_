#!/bin/bash

## using if statement
if [ $# -ne 1 ];then
## true statement is about to execute
        echo "This is NOT funny"
##otherwise
else

        echo "This is funny"
fi
#ne is denoted as not equal
##-ne 1 means that no argument is passed
