inpu=$1
[ -d "$inpu" ] && echo "directory"
[ -f "$inpu" ] && echo "file"
