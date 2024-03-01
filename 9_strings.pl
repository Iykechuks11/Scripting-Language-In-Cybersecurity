#!/usr/bin/perl

# An array of integers from 1 to 10

@list = (1..10);

# for $key (@list)
# {
#     print "$key\n";
# }

# Non-interpolated strings
$str1 = 'Using Single quotes: @list';

# Interpolated strings
$str2 = "Using Double-quotes: @list";

print("$str1\n$str2\n");

# Using Escape character in Strings:
$email1 = "email@example.com";

print "$email1\n";

$email2 = "email\@example.com"; # The backslash character used to escape the omited string that follows.

print "$email2\n";

$str3 = "Using the escape(\\) character to escape the escape character";

print "$str3\n";