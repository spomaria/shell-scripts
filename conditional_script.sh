#!/bin/bash

echo "Are you happy with this exercise?"
echo -n "Enter \"y\" for yes, \"n\" for no: "

# store user's response in the 'response' variable
read response

# using conditionals to display messages
if [ "$response" == "y" ]
then
    echo "I'm pleased to hear you are happy with this exercise"
    echo "Your feedback about what makes you happy will be most appreciated"
elif [ "$response" == "n" ]
then
    echo "I'm so sorry to hear you are not happy with this exercise"
    echo "Your feedback about what makes you unhappy will be most appreciated"
else
    echo "Your response must be either 'y' or 'n' please"
    echo "Please re-run the script and response accordingly"
fi