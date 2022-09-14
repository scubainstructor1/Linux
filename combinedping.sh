 rm $1 > /dev/null 2>&1
classroom=$1
x=0
while [ $x -lt 9 ];do
((x=x+1))
ping $classroom-0$x -c 1 > /dev/null 2>&1 
if [ $? = 0 ]
then
echo "$classroom-0$x is up and responding"
else
echo "$classroom-0$x is not responding and possibly off"
fi
done
x=9
while [ $x -lt 24 ];do
((x=x+1))
ping $classroom-$x -c 1 > /dev/null 2>&1
if [ $? = 0 ]
then
echo "$classroom-$x is up and responding"
else
echo "$classroom-$x is not responding and possibly off"
fi
done
echo "          Hope this script helped you determine which of the computers
                in $classroom are functioning"
