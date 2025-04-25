file=$1
declare -A wordc

while read line; do
    for word in $line; do      
        if [[ -n "${wordc[$word]}" ]];then
            ((wordc["$word"]+=1))
        else
            wordc[$word]=1
        fi
    done
done < $file

for i in ${!wordc[@]};do
    echo "$i : ${wordc[$i]}"
done


