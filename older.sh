#! /bin/bash
## Q-Finding the oldes file

## checking if argument older is passed
if [[ $1 == 'older' ]]; then
##if true then,
##creating directory

        mkdir naemjadu

## Traversing in the directory
        cd naemjadu

## creating dummy files as per question

##touch file specs /file name
        touch -t 202103021800 foo
        touch -t 202103021801 goo
        touch -t 202103021802 hoo
        find /home/ubuntu/naemjadu -type f -printf '%T+ %p\n' | sort | head -n 1

##if false
else
        echo "please enter correct argument that is older"
fi
## Finding oldest file

##find /directory /type of file /print file /by modification date, by name, by number then sort it and then find the top first  by head.
##find /home/ubuntu/naemjadu -type f -printf '%T+ %p\n' | sort | head -n 1

## Optional: Removing directory
cd ..
rm -r naemjadu


## the command printf'%T+%p\n' will be printing the files that aremodified by the date and the time.
## + is a seperator.
## %p show name of the file where as
## \n designates the new line
## sort the sort command sort outs in reverse by numbers, by months and also remove redundance and then send the output to head command.
## head command shows the top file
## -n1 will be showing that file which is oldest
