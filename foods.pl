#!/usr/local/bin/perl -w 
$foods = "broccoli, steak, chicken, pasta, macaroni, pork";
@foodsarray=split(",",$foods);
@eats=@foodsarray[1,2,3]; 
$number=@foodsarray;
print "@foodsarray \n";
print "$foodsarray[0], $foodsarray[$#foodsarray]. \n";
print "There are $number elements in the \@foodsarray \n";
print "@eats \n";
print "What are your five favorite foods? \n";
@foodfave=<STDIN>;
print "@foodfave";