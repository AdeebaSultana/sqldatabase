read -p "enter the num: " a
read -p	"enter the num: " b

read -p "enter the num: " c


if [ $a -gt $b ]
then
echo $a is greater than $b
elif [ $a -lt $c ]
then 
echo $a is lessthan $c
else
echo $b is greater than $a
fi


