i=1
declare -A dictionary
for((i=1;i<=50;i=$((i+1))))
do
month=$((RANDOM%12+1))
if [[ ${dictionary[$month]} = '' ]]
then
##declare -a array
##array[${#array[@]}]=$i
##echo ${array[@]}
dictionary[$month]="$i "
else
declare -a temp
temp=${dictionary[$month]}
temp+="$i "
##temp[${#temp[@]}]=$i
##echo "$month=${temp[@]}"
dictionary[$month]=$temp
##echo ${$dictionary[$month]}
fi
done
keys=${!dictionary[@]}
for i in $keys
do
declare -a value
value=${dictionary[$i]}
echo "$i=$value"
done
