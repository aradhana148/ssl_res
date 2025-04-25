query=$1
a=0
for i in $@; do
    if ((query==i)); then
        ((a+=1))
    fi
done
if ((a==2));then
    echo "YES"
else 
    echo "NO"
fi
    