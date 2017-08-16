#!/bin/bash
#########################################
#					                              #
#   Interface control bash script	      #
#   Written by Derek Van Vuuren		      #
#   vanvuuren2823@student.cptc.edu	    #
#					                              #
#########################################

#display all interfaces whether up or down
ifconfig -a

#read the user input into string iface     						    
read -p "What is your interface? " iface

#read user input into string state
read -p "Bring interface $iface up or down: " state

#runs ifconfig with the user input $iface and $state at root    
sudo ifconfig $iface $state

#wait for 5 seconds   				
sleep 5

#verify the interface we just worked with
ifconfig $iface  
