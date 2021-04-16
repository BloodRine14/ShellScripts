echo "Enter directory name that you want to create"
read dirname
mkdir $dirname
cd $dirname
echo "Enter source file contents"
cat > file1.txt
echo "Enter destination file contents"
cat > file2.txt
cp file1.txt file2.txt
status=$?
if [ $status -eq 0 ]
then
echo "File copied successfully"
else
echo "Problem copying file"
fi
