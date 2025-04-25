BEGIN {
    FS = ",";
    OFS = " ";
    RS = "\n";
    ORS = "\n"; 
    net=0;
    agri=0;
    bank=0;
    film=0;
    manu=0;
    rail=0;
}
{
    print $0;
    net+=$4;
    if ($3 == "Agriculture"){
        agri+=$4;
    }
    if ($3 == "Banking"){
        bank+=$4;
    }
    if ($3 == "Film"){
        film+=$4;
    }
    if ($3 == "Manufacturing"){
        manu+=$4;
    }
    if ($3 == "Railways"){
        rail+=$4;
    }  
}
END {
    print "=====";
    print "Net :", net;
    print "Agriculture :", agri;
    print "Banking :", bank;
    print "Film :", film;
    print "Manufacturing :", manu;
    print "Railways :", rail;
}