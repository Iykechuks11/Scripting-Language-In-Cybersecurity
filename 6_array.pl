#!/usr/bin/perl

@number = (40, 55, 63, 17, 22, 68, 89, 97, 89);
@array1 = (1, 2, 3, 4, 5, 6);

# using the qw function
# quote word - qw
@array2 = qw /This is perl tutorial, and I am learning from GeeksforGeeks/; 

print "@number[0] \n";
print "@number[-1] \n";
print "@array1[-1] \n";
print "@array2[-1]\n";

foreach $key (@array2) {
    print($key, "\n");
}

@array = qw/12 15 46 98 42 35/;
 
foreach $key (@array){
     print($key,"\n");
}