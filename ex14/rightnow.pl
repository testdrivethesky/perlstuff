#!/usr/bin/env perl -w

use RightNow;
use warnings;
my $timein;

print "How would you like the time displayed? Please select y or n. ";
chomp($timein=<STDIN>);

# Passing parameters as a hash
my $tiempo = RightNow->new( "Time"=>$timein);

$tiempo->set_time;
$tiempo->print_time;