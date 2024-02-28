#!/usr/bin/perl

$a = 10;
$b = 4;
$c = true;
$d = false;

# Using arithmetic operators
print "Addition is: ", $a + $b, "\n";
print "Subtraction is: ", $a - $b, "\n";

# Using Relational operators
if ($a == $b)
{
    print $a, " is equal to ", $b, "\n";
}
else
{
    print $a, " is not equal to ", $b, "\n";
}

# Using logical operator 'AND'
$result = $a && $b;
print "AND operator: ", $result, "\n";

# using Bitwise AND Operator  
$result = $a & $b;  
print "Bitwise AND: ", $result, "\n";  

# using assignment operator
print "Addition assignment operator: ", $a += $b, "\n";
