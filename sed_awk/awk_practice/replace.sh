file=$1
para=$2
awk 'BEGIN{
    FS=":"
    OFS=""
    print "file=$1">"l.sh"
}
{
    a=$1
    b=$2
    print "sed -e '\''s/student_name/",a,"/g'\'' -e '\''s/roll_no/", b ,"/g'\'' paragraph.txt >> output.txt" >"l.sh"
}
' "$file"

bash l.sh $2
rm l.sh
