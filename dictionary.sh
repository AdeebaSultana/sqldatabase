declare -A student=( [name]="Adeeba" [roll_No]=123 [branch]="CSE" )
#echo ${student[@]}
for value in ${student[@]}
do
echo $value
done
for key in "${!student[@]}";
do
echo "$key ${student[$key]}"
done
#echo ${student[name]}
student+=([name1]="Adeeba")
echo ${student[@]}
unset student[branch]
