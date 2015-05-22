#!/usr/local/bin/perl -w 
print "What are your five favorite foods? \n";
chomp($foods=<STDIN>);
@foodsarray=split(",",$foods);
@eats=@foodsarray[1,2,3]; 
$number=@foodsarray;
print "@foodsarray \n";
print "$foodsarray[0], $foodsarray[$#foodsarray]. \n";
print "There are $number elements in the \@foodsarray \n";
print "@eats \n";



