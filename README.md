ALL THE SCRIPTS ARE WRITTEN USING VI EDITOR IN UBUNTU.

#1 direct.sh -- To check whether given file is a directory or not.

Code:-<br />
inpu=$1<br />
[ -d "$inpu&" ] && echo "directory";<br />
[ -f "$inpu&" ] && echo "file";<br />

#2 filecn.sh -- To count the number of files in a directory.

Code:-<br />
FILE="/tmp/count.txt"<br />
echo -n "Enter directory name:"<br />
read dname<br />
ls $dname > $FILE<br />
echo "Number of files in directory: $(grep [^*$] $FILE -c)"<br />
rm -f $FILE<br />

#3 filecn.sh -- To copy contents of one file to another.

Code:-<br /> 
echo -n "Enter source file name:"<br />
read src<br />
echo -n "Enter target file name:"<br />
read target<br />
cp $src $target<br />
status=$?<br />
if [ $status -eq 0 ]<br />
then<br />
echo "File copied successfully"<br />
else<br />
echo "Problem copying file"<br />
fi<br />

#4 dicontcp.sh -- To create a directory, write contents on that and copy to a suitable location in your home directory.

Code:- 
echo "Enter directory name that you want to create"<br />
read dirname<br />
mkdir $dirname<br />
cd $dirname<br />
echo "Enter source file contents"<br />
cat > file1.txt<br />
echo "Enter destination file contents"<br />
cat > file2.txt<br />
cp file1.txt file2.txt<br />
status=$?<br />
if [ $status -eq 0 ]<br />
then<br />
echo "File copied successfully"<br />
else<br />
echo "Problem copying file"<br />
fi<br />

