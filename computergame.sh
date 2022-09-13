#!/bin/bash
# nested if then script
clear
echo; echo; echo
echo "Welcome to my Adventure Game!"
echo; echo

function begin() {
echo "You approach a T in the road and need to decide which path to take; left or right? "
    read answer
    if [ $answer = "right" -o $answer = "r" ]
    then
         echo -e "\nYou come to a river\n"
         river
    else
         echo -e "\nYou come to a bridge\n"
         bridge
    fi
}

function river() {
         echo -e "\n Would you like to swim across or look for a bridge?\n"
         read answer
         if [ $answer = "swim" ]
         then
         echo -e "\nYou almost made it across but were eaten by an alligator.  Hey alligators get hungry too.  You lose!\n"
         begin
         else
         echo -e "\nYou looked for a bridge but you didn't have any water and died of dehydration\n"
         exit 0
         fi
}
function bridge() {
         echo -e "\nThe bridge looks wobbly.  Do you want to cross or turn around and go back to the intersection?\n"
    read answer
    if [ $answer = "cross" ]
    then 
         echo -e "\nAfter crossing the bridge you meet a trol on the other side\n"
    troll
    else
         echo "start again"
    begin
    fi
}

function troll() {
     echo -e "\nWill you talk to the trol or ignore it?\n"
     read answer
     if [ $answer = 'talk' ]
     then
     echo -e "\n The trol is estatic that you chose to interact with him.  Most people ignore him."
     echo -e "\n the trol gives you a pot of gold!!!!!  you win!!!!"
     exit 0
     else
     echo -e "\n You really upset the trol by ignoring him and he loped your head off with his sword"
     echo -e "\n You lose"
     exit 0
     fi
}
begin
