# take only the main text and save it in OTOS.txt:
# start from line 305 onward, then take the first 1393 lines, and redirect to the file OTOS.txt
tail -n +305 ../data/OnTheOriginOfSpecies.txt | head -n 13939  > OTOS.txt

# count the occurrences of evolution or evolved
echo "Mentions of evolution or evolved"
grep -c -i "evolution\|evolved" OTOS.txt

# count the occurrences of natural selection
echo "Mentions of natural selection"
grep -c -i "natural selection" OTOS.txt

# count the occurrences of natural selection
echo "Mentions of Wallace"
grep -c -w "Wallace" OTOS.txt

# Fancier version of counting "natural selection": what if they span two lines?
# we can remove the newline characters (Windows file: \r \n) and then count using the option -o of grep (count occurrences within the same line)
cat OTOS.txt | tr -d '\r' | tr '\n' ' ' | grep -o -i -c 'natural selection'

