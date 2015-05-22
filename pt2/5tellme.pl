#!/usr/local/bin/perl -w 

open(FH, "datebook.master") or die "Cannot open datebook.master: $!\n";

@names=<FH>;
@fields=map { split(":") } @names;
foreach $field (@fields) {
print $field, "\n";
}

close (FH);