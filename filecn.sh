FILE="/tmp/count.txt"
echo -n "Enter directory name:"
read dname
ls $dname > $FILE
echo "Number of files in directory: $(grep [^*$] $FILE -c)"
rm -f $FILE
