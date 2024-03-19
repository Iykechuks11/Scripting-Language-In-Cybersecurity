# #!/usr/bin/perl

# # Open a file in read-only mode
# my $file = "sample text file.txt";
# open(FH, "<", $file) or die "cannot open $file $! \n";

# # Variables that account for each iteration
# $count_line = 0;
# $count_empty_line = 0;
# $count_non_empty_line = 0;
# $count_uppercase = 0;

# # Prints the total number of lines in the file
# while (<FH>) {
#   $count_line++ if /^/;
#   $count_non_empty_line++ if /./;
#   $count_empty_line++ if /^$/ ;
#   $count_int++ if /\d/;
#   $count_uppercase++ if tr/A-Z//;
# }

# # Identify and count lines containing only digits (0-9) using regular expressions.

# # Iterate through each character. 

# # Count the occurrences of uppercase and lowercase letters using regular expressions. 

# print("Number of lines: $count_line", "\n");
# print("Number of empty lines: $count_empty_line", "\n");
# print("Number of non-empty lines: $count_non_empty_line", "\n");
# print("Number of lines containing only integers: $count_int", "\n");
# print("Number of uppercase letters $count_uppercase", "\n");
# print("Number of lowercase letters", "\n");

# # close the file
# close(r)

# #!/usr/bin/perl

# # Open a file in read-only mode
# my $file = "sample text file.txt";
# open(FH, "<", $file) or die "cannot open $file: $! \n";

# # Variables that account for each iteration
# my $count_line = 0;
# my $count_non_empty_line = 0;
# my $count_digit_only_line = 0;
# my $count_uppercase = 0;
# my $count_lowercase = 0;

# while (my $line = <FH>) {
#     $count_line++;
#     $count_non_empty_line++ if $line =~ /\S/;  # Check for non-whitespace characters
#     $count_digit_only_line++ if $line =~ /^\d+$/;  # Check if the line contains only digits

#     # Count uppercase and lowercase letters in the line
#     $count_uppercase += () = $line =~ /[A-Z]/g;
#     $count_lowercase += () = $line =~ /[a-z]/g;
# }

# print("Number of lines: $count_line\n");
# print("Number of non-empty lines: $count_non_empty_line\n");
# print("Number of lines containing only integers: $count_digit_only_line\n");
# print("Number of uppercase letters: $count_uppercase\n");
# print("Number of lowercase letters: $count_lowercase\n");

# Close the file
# close(FH);

#!/usr/bin/perl

use strict;
use warnings;

# Open a file in read-only mode
my $file = "sample text file.txt";
open(my $fh, '<', $file) or die "Cannot open $file: $!\n";

my $total_lines = 0;
my $non_empty_lines = 0;
my $digit_only_lines = 0;
my $uppercase_count = 0;
my $lowercase_count = 0;

while (my $line = <$fh>) {
    $total_lines++;
    $non_empty_lines++ if $line =~ /\S/;  # Increment if line is not empty
    $digit_only_lines++ if $line =~ /^\d+$/;  # Increment if line contains only digits

    # Count uppercase and lowercase letters
    foreach my $char (split //, $line) {
        $uppercase_count++ if $char =~ /[A-Z]/;
        $lowercase_count++ if $char =~ /[a-z]/;
    }
}

close($fh);

print "Number of lines: $total_lines\n";
print "Number of non-empty lines: $non_empty_lines\n";
print "Number of lines containing only integers: $digit_only_lines\n";
print "Number of uppercase letters: $uppercase_count\n";
print "Number of lowercase letters: $lowercase_count\n";
