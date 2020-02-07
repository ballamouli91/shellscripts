# Create a simple script which will ask the user for a few pieces of information 
# then combine this into a message which is echo'd to the screen.

#! /bin/bash
read -p "please enteryour name: " name
read -p " where are your from? " place
read -p "where you going? " destination

echo " my name is $name, I am from $place and am going to $destination"
