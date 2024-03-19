#!/usr/bin/perl

# Open a file in read-only mode
my $file = "sample text file.txt";
open(FH, "<", $file) or die "cannot open $file: $! \n";

# Variables that account for each iteration
my $count_line = 0;
my $count_non_empty_line = 0;
my $count_digit_only_line = 0;
my $count_uppercase = 0;
my $count_lowercase = 0;

while (my $line = <FH>) {
    $count_line++;
    $count_non_empty_line++ if $line =~ /\S/;  # Check for non-whitespace characters
    $count_digit_only_line++ if $line =~ /^\d+$/;  # Check if the line contains only digits

    # Count uppercase and lowercase letters in the line
    $count_uppercase += () = $line =~ /[A-Z]/g;
    $count_lowercase += () = $line =~ /[a-z]/g;
}

print("Number of lines: $count_line\n");
print("Number of non-empty lines: $count_non_empty_line\n");
print("Number of lines containing only integers: $count_digit_only_line\n");
print("Number of uppercase letters: $count_uppercase\n");
print("Number of lowercase letters: $count_lowercase\n");

# Close the file
close(FH);