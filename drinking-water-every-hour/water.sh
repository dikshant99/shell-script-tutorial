#!/bin/bash                                                                                                             
# Moto: Go and have you water                                                                                                                                                                                                                   
x=1                                                                                                      
sudo apt update -qqq ; sudo apt install sl cowsay -y -qqq                                                               
clear                                                                                                                   
cowsay -f dragon "It's TIME TO DRINK WATER, Go and Have it"                                                             
sleep 6                                                                                                                 
clear                                                                                                                   
while [ $x -le 5 ]                                                                                                      
do                                                                                                                      
sl -F                                                                                                                   
x=$(( $x + 1 ))                                                                                                         
done           
