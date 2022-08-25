

read -p "enter the availibility of student: " x

if [ $x -eq 1 ]
then
echo $x is present
elif [ $x -eq 0 ]
then
echo $x is absent
else
echo $x is on leave
fi






