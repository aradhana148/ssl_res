BEGIN{
    FS=",";
    OFS=""; 
}
{
    if ($1=="Student ID"){
        print $0,",Email-ID";
    }
    else{
        print $0,",",$2,$4,"@surveycorps.com";
    }
}