BEGIN{
    FS=" ";
    OFS="";
    RS="\n";
    RFS=""
    cond=1;
}
{
    if ($1=="Produced" && masexit[$5]!=1) {
        prod[$2]+=1;
    }
    else if ($1=="Consumed" && prod[$2]==1 && workexit[$5]!=1) {
        prod[$2]-=1;
    }
    else if ($3=="exiting" && $1=="Master") {
        masexit[$2]=1;
    }
    else if ($3=="exiting" && $1=="Worker") {
       workexit[$2]=1;
    }
    else {
        cond=0;
    }
    j=0;   
    for (i in prod) {
        if (prod[i]==1) {
            j+=1;
            print i;
        }
    }
}
END{
    if (cond==0) {
        print "NO";
    }
    else {
        print "YES";
    }
}