echo "number of arguments " $#
a=$#
filename=$1
uname=$2
echo "file name is $filename"
if [ $a == 2 ]
then
   echo "enough arguments"
else
   echo "not enough arguments"
	exit 0
fi
if [ ! -f "$filename" ]
then
	echo "file  not exists"
	exit 0
else
	
	echo "file exists"
fi
if grep -xq $uname $filename
then
	echo "exists"
else 
	echo "name not exists"
       echo $uname >> $filename

fi
cat $filename
