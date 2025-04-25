for file in $(find -name "*.out"); do
    echo "$*">>$file
done
