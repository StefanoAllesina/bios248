# b) Write a script that can be executed from the command line and accepts the data file and ID as parameters.

tail -n +2 $1 | cut -f 1 | grep -c -w $2

# e.g.
# bash solution-3.sh ../data/Gesquiere2011_data.csv 3
# bash solution-3.sh ../data/Gesquiere2011_data.csv 27

# for a fancier version that counts the occurrences for every distinct ID, see solution-3c.sh

