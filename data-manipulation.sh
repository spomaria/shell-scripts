#!/bin/bash

csv_file="./arrays_table.csv"

# parse table columns into 3 arrays
column_0=($(cut -d "," -f 1 $csv_file))
column_1=($(cut -d "," -f 2 $csv_file))
column_2=($(cut -d "," -f 3 $csv_file))

# print first array
echo "Displaying the first column: "
echo "${column_0[@]}"

# create a new array as difference of columns 3 and 2
column_3=("column_3")

# get the number of lines in each column
nlines=$(cat $csv_file | wc -l)
echo "There are $nlines lines in the file"

# populate the array
for((i=1; i<$nlines; i++)); do
    column_3[$i]=$((column_2[$i] - column_1[$i]))
done
# print newly created array
echo "Displaying the new column: "
echo "${column_3[@]}"

## Combine the new array with the csv file
# first write the new array to a file
# initialize the file with a header
echo "${column_3[0]}" > column_3.txt
for((i=1; i<$nlines; i++)); do
    echo "${column_3[$i]}" >> column_3.txt
done
paste -d "," $csv_file column_3.txt > report.csv

report="./report.csv"
# Display the result of the new file for confirmation
more $report