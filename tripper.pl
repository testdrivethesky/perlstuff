#!/usr/bin/perl -w
sub mileage{
	my($miles) = shift(@_);
	my($gas) = pop(@_);
	$total = $miles / $gas;	
}
print "Number of miles driven, gallons used : ";
@n=split(',',<STDIN>);
&mileage(@n); 
print "The mileage is $total.\n";