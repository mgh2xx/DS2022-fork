#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name a public location: " NOUN1
read -p "2. Name something you buy: " NOUN2
read -p "3. Name an adjective: " ADJ1
read -p "4. Name an animal: " NOUN3
read -p "5. Name an emotion: " ADJ2
read -p "6. Name a verb: " VERB1
read -p "7. Name a past tense verb: " VERB2
read -p "8. Name a place: " NOUN4

echo "Today, I went to the $NOUN1 to buy a $NOUN2. On my way, I saw a $ADJ1 $NOUN3. It made me feel $ADJ2, so I decided to $VERB1. After that, I $VERB2 to the $NOUN4." 
