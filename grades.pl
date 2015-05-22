#!/usr/bin/perl -w
$file='C:\Perl64\failures';
open(FAILURES, ">$file") || die "Can't open failures: $!\n";

@cs101=qw(95 84 72 80);
@cs202=qw(80 74 67 51);
@cs303=qw(50 47 44 20);
$coursefail="CS303";

print "Enter Student Name : ";
$name = <STDIN>;

&ave (@cs303);
sub ave{
	$mean = eval(join("+", @_)) / 4;
	print "Average: $mean\n";
	print "Be advised: $name failed $coursefail\n" if $mean < 60;
	print FAILURES "$name $coursefail\n" if $mean < 60;
close (FAILURES);	
}

&highest (@cs303);
sub highest{
    @sorted = sort { $a <=> $b } @_;
    my($high) = shift(@_);
	print "Highest: $high\n";
}

&lowest (@cs303);
sub lowest{
	@sorted = sort { $b <=> $a } @_;
    my($low) = pop(@_);
	print "Lowest: $low\n";
}

sub AUTOLOAD {
	my(@arguments)=@_;
	$args=join(', ', @arguments);
	print "$AUTOLOAD was never defined.\n";  
	print "The arguments passed were $args.\n";
}

