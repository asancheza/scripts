#!/bin/bash

# cat
sed '' sorttest

# 
sed -n '' sorttest

# Print
sed -n 'p' sorttest

# Print
sed p sorttest

# CMD
# selector cmd 
# 1,10

# /Greg/

sed -n '/Greg/p' sorttest

# d - delete
sed -d '/Greg/p' sorttest

# Show 10 lines
sed -n '1,10p' sorttest

sed 's/Greg/Thierry/' sorttest

# replace two first digits to 467
sed 's/^[[:digit:]][[:digit]]#/467/' sorttest

# First ocurrence in line
sed 's/o/X/' sorttest
# All ocurrences in line
sed 's/o/X/g' sorttest

#inplace change file 
sed -i 's/o/X/g' sorttest

# cut and paste
# -#-#-#-#-#
# change 1 to the end
# |([^#]*\)#\(.*\)/\2#\1
# capture operators
sed 's/\([^#]*\(.*\)/\2#\1/' sorttest
