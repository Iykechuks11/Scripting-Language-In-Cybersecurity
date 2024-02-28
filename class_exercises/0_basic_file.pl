#!/usr/bin/perl

# Reading a File
open(FILEHANDLE, "$filename") || die \
"open of $filename failed: $!";

while (<FILEHANDLE>) {
    chomp $_;
    print "$_\n";
}

close FILEHANDLE;