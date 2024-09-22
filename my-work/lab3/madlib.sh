#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name a favorite food: " NOUN1

read -p "2. Name an odd animal: " NOUN2

read -p "3. A character trait of a good classmate: " ADJECTIVE1

read -p "4. A way to reach a destination: " VERB1

read -p "5. Someone you don't want to see at the grocery store: " NOUN3

read -p "6. A fun pet is: " ADJECTIVE2

read -p "7. When you get home after school you might: " VERB2

read -p "8. Something you are excited to see in a classroom: " NOUN4

echo "Once I was walking with $NOUN3 down the street when we saw a $NOUN4 $VERB1.
The $NOUN4 was so shocking that $NOUN3 tripped and fell. By the time we got to the cafe, $NOUN2 had been waiting for a while.
Luckily $NOUN2 is very $ADJECTIVE1 so she didn't mind.
$NOUN3 was so $ADJECTIVE2 when we got there that she $VERB2 and knocked down $NOUN1."
