#!/usr/local/bin/perl -w 

open(FH, "datebook.master") or die "Cannot open datebook.master: $!\n";

@names=<FH>;

print "Name of Person:     ";
chomp($name = <STDIN>);
$num = grep( /^$name/i, @names);
@num1 = grep( /^$name/i, @names);
print "Records Found: $num\n Names Found: @num1";
$phone="@num1";
@tel=split(":",$phone);
print "Phone\: $tel[1]\n";
print "Who are you searching for?     ";
$look = <STDIN>;
chomp($look);
print "What is the new phone number for $look? ";
$new = <STDIN>;
print "$look\'s phone number is currently $tel[1]\n";
@newnum="@tel";
@newphone=splice(@newnum, 0, 1, "$new"); 
$times = grep( /^$look/i, @names);
print "Here is the line showing the new phone number:\n";
print "@newnum";
print "@newphone\n";
print "$look was found in the array $times times.";
close (FH);