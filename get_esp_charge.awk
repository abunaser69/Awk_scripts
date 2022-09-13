#!/bin/awk -f

BEGIN {i=0}
/He/ {i=0}
    {if(i==1){
        if(NF==3){printf ("% 7.6f\n", $3)}
        }
    }
/Charges from ESP fit/ {i=1}
