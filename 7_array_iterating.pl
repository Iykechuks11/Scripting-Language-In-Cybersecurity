#!/usr/bin/perl

#array creaton
@arr = (11, 12, 13, 14, 15, 16, 17);

print "@arr[1] \n";
print("@arr[2] \n");

# size of array
$len = @arr;

print("$len\n");

for ($b = 0; $b < $len; $b++)
{
    print "\@arr[$b] = $arr[$b]\n";
}

# foreach loop

foreach $a (@arr)
{
    print "$a ";
}
print "\n";