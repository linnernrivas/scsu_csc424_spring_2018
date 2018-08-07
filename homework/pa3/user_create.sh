#!/bin/bash

echo "Please enter a group name that you want to create: "; read gname

#create the group name and verifies if the group does or doesnot exist.
#if it doesn't exist then the group is added.

if [ "$gname" = "grep '^$gname' /etc/group"  ];
then
	groupdel -r $gname
	groupadd $gname
else
	groupadd $gname
fi

for ((i=0;i<10;i=$i+1))
do
        #"Student$i"
        useradd -G $gname "Student$i"
        echo "Hello Student$i, welcome to $gname"
done
