#! /bin/bash

# This script accepts the user\'s name and prints
# a message greeting the user

# Print the prompt message on screen
echo -n "Enter your first name:"

# Wait for user to enter a name, and save the entered name into the variable\'firstName\'
read firstName

# Print another prompt message on screen
echo -n "Enter your last name:"

# Wait for user to enter a name, and save the entered name into the variable\'lastName\'
read lastName

# Print the welcome message followed by the name
echo "Welcome $firstName $lastName."

# The following message should print on a single line. Hence the usage of \'-n\'
echo -n "Congratulations! You just created and ran your first shell script"
echo "using Bash on IBM Skills Network"