BEGIN{
    FS=","
    RS="\n"
    OFS=""
    ORS=""
}
{   if (NR==1){
        for(i=1;i<=NF;i++){
            print $i
            print "\t"
        }
        print "Average"
        print "\n"
    }
    else{
        sum=0
        for(i=1;i<=NF;i++){
            print $i
            if (i>1){
                sum=sum+$i
            }
            print "\t"
        }
        print (sum/(NF-1))
        print "\n"
    }
}