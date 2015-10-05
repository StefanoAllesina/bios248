# The two programs are netsize.sh and netsize_all.sh

# Point c)
echo "Network with largest number of rows"
bash netsize_all.sh | sort -n -k 2 | tail -n 1 | cut -d ' ' -f 1

echo "Network with largest number of column"
bash netsize_all.sh | sort -n -k 3 | tail -n 1 | cut -d ' ' -f 1

