# It is a set of key-value pairs.

#!/usr/bin/perl

$Fruit{'Mango'} = 10;
$Fruit{'Apple'} = 20;
$Fruit{'Banana'} = 30;

# printing elements of Hash

print "Printing values of Hash: \n";
print "$Fruit{'Mango'}\n";
print "$Fruit{'Apple'}\n";
print "$Fruit{'Banana'}\n";

# Initializing Hash using '=>'
%Person = ('Name' => 'John', 'Age' => 28, 'Gender' => 'Male');

print "$Person{'Name'}\n";
print "$Person{'Age'}\n";
print "$Person{'Gender'}\n";
