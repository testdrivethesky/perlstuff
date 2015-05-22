#!/usr/bin/perl -w
sub mileage(\@);
print "Number of miles driven, gallons used : ";
@n=split(',',<STDIN>);
mileage(@n); 
print "The mileage is $total.\n";
sub mileage(\@) {
	$miles = shift(@_);
	$gas = pop(@_);
	$total = $miles / $gas;	
}
