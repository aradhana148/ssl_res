arr=()
j=0
for i in $@;do
    arr[j]=$i
    ((j+=1))
done

a=0
swap=0
n=${#arr[@]}
((n-=1))
while ((a==0)); do
    i=-1
    while ((i<n)); do
        ((i+=1))
        if ((i==n));then
            break
        fi
        if ((arr[$i]>arr[$i+1]));then
            ((swap+=1))
            b=${arr[$i]}
            arr[$i]=${arr[$i+1]}
            arr[(($i+1))]=$b
            break
        fi   
    done
    if ((i==n)); then
        a=1
    fi
done

echo "${arr[@]}"
echo $swap
