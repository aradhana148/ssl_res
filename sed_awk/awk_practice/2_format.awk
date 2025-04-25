BEGIN{
    FS=" "
    OFS=";"
    ORS=""
}
{
    if (NR==1){
        for(i=1;i<=NF;i++){
            print $i
            print ";"
        }
        print "Comments\n"
    }
    else{
        rollno=$1
        source=$2
        out=$3
        rep=$4
        if ((source ~ /[A-Za-z0-9_]+\.cpp$/)&&(out~/[A-Za-z0-9_]+\.txt$/)&&(rep~/[A-Za-z0-9_]+\.pdf$/)){
            print rollno,source,out,rep,"Correct Submission Format\n"
        }
        else{
            print rollno,source,out,rep,"Wrong Submission Format\n"
        }
    }
}