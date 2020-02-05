#!/bin/bash
 string="hello world"
 #Extract from a position 
 ${string:position}
 echo ${string:1}
 echo ${string:6}
 # Extract from a position with a length --> ${string:position:length}
 echo ${string:0:5}
 echo ${string:5:6}
 # Remove shortest starting match -->${variable#pattern}
 string="hello world, hello jim"
 echo ${string#*hello}
 # Remove longest starting match --> ${variable##pattern}
 string="hello world, hello jim"
 echo ${string##*hello}
 # Remove shortest ending match -->${variable%pattern}
 string="hello world, hello jim"
 echo ${string%hello*}
 # Remove longest ending match -->${variable%%pattern}
 string="hello world, hello jim"
 echo ${string%%hello*}
