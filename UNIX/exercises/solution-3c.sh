# The simplest solution is to use the evil bash loop
# note the strange syntax: the ` ` redirect the output of a bash command to a list of IDS:
IDS=`tail -n +2 ../data/Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
# Now go over the different ids
for ii in $IDS
do  
    echo "ID" $ii "Count" `tail -n +2  ../data/Gesquiere2011_data.csv | cut -f 1 | grep -c -w $ii`
done

