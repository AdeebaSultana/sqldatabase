function addition(){
z=$(($1+$2))
return $z
}
addition 1 2
echo $?
