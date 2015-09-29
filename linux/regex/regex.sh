#!/bin/bash
# Regex bash matches 

echo "*** MATCH *** .c"
grep .c file
echo "*** MATCH *** r.."
grep r.. file
echo "*** MATCH *** cc"
grep cr file
echo "*** MATCH *** c*r*"
grep c*r* file
echo "*** MATCH *** ^c*r"
grep ^c*r file
echo "*** MATCH *** cr*"
grep cr* file
echo "*** MATCH *** *r"
grep *r file
echo "*** MATCH *** c.*r"
grep c.*r file
