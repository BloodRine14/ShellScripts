echo "Enter file name"
read file
if [ -f $file ]
then
	echo "File found with a name $file \n"
	echo "File content as below \n"
	count=0
	val=0
	while read line
	do
		val=$("$line" | wc -c)
		echo "$line -->Contained $val character"
		count=$((count+1))
	done < $file
	echo "Total line in file: $count"
else
	echo "File not found check other file using running script"
fi
