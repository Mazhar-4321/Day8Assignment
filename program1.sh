declare -A dictionary
##dictionary["a"]="mazhar"
##echo ${dictionary["a"]}
##if [[ ${dictionary["b"]} = '' ]]
##then
##echo "m"
##fi
flag=1
while [[ $flag -eq 1 ]]
do
dice=$((RANDOM%6+1))
if [[ ${dictionary[$dice]} = '' ]]
then
dictionary[$dice]=1
else
value=dictionary[$dice]
value=$((value+1))
dictionary[$dice]=$value
if [[ $value -eq 10 ]]
then
flag=0
fi
fi
done
min=10
max=0
minNumber=0
maxNumber=0
keys=${!dictionary[@]}
for i in $keys
do
 if [[ ${dictionary[$i]} > $max ]]
then
max=${dictionary[$i]}
maxNumber=$i
fi
if [[ ${dictionary[$i]} < $max ]]
then
min=${dictionary[$i]}
minNumber=$i
fi
done
echo $maxNumber,$minNumber
