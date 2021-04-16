echo -n "Enter source file name:"
read src
echo -n "Enter target file name:"
read target
cp $src $target
status=$?
if [ $status -eq 0 ]
then
echo "File copied successfully"
else
echo "Problem copying file"
fi
