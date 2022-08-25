a=1.3
b=3
z=`echo $a $b | awk '{print $1+$2}'`
echo $z
