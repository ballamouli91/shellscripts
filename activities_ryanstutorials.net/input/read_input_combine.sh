# Create a simple script which will ask the user for a few pieces of information 
# then combine this into a message which is echo'd to the screen.
# add in some data coming from command line arguments and maybe some of the other system variables.
#! /bin/bash
read -p "please enteryour name: " name
read -p " where are your from? " place
read -p "where you going? " destination

echo " my name is $name, I am from $place and am going to $destination"
echo " my home location is $HOME; my system name is $HOSTNAME ; my system langauge is $LANG"
echo " my default shell is $SHELL ; my terminal is $TERM; my editor is $EDITOR "
