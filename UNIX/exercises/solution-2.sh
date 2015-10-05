# a) Which one of these jounrals is more represented "Ecology Letters", "Nature", or "PLoS ONE"?

# Papers in Nature -- remove Nature Communications and Nature Climate change
echo "Papers in Nature"
cut -d ';' -f 3 ../data/Hopkins_papers_2012-14.csv | grep "Nature" | grep -v -i "communications" | grep -v -i "Climate " | wc -l

echo "Papers in Ecology Letters"
cut -d ';' -f 3 ../data/Hopkins_papers_2012-14.csv | grep -c "Ecology Letters"

echo "Papers in PLoS ONE"
cut -d ';' -f 3 ../data/Hopkins_papers_2012-14.csv | grep -i -c "PLoS One"

# b) Where was the most cited paper of 2012 published? 
# with 1080 (!!) citations
# to solve the problem, you need the option -t ';' for sort, defining the delimiter between columns
echo "Journal for most cited paper"
grep '2012' ../data/Hopkins_papers_2012-14.csv | sort -t ';' -k 4 -n  | tail -n 1 | cut -d ';' -f 3

# This was way to hard! ...and required me some serious Googling...
echo "Max number of authors (actually -1) for 2013 papers"
echo "Sorry this is more complex than expected ..."
grep 2013 ../data/Hopkins_papers_2012-14.csv | cut -d ';' -f 1 | awk ' {print (split($0,a,",")-1) }' | sort -n | tail -n 1
