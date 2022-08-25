read -p "enter the number" x
y=$(($x%2))
if [ $y -eq 0 ]
then
echo $x is even
else
echo $x is odd
fi
