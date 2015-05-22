#!/usr/bin/perl
# Open a file with a filehandle
$file='C:\Perl64\newfile';
open(HANDOUT, ">$file") || die "Can't open newfile: $!\n";

open(FILE, "+>>datebook.names") || die "Can't open datebook: $!\n";
while($inputline=<FILE>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
	print	"Enter the name: ";
	chomp($name=<STDIN>);
	print "Enter the phone: ";
	chomp($phone=<STDIN>);	
	print "Enter the street: ";
	chomp($street=<STDIN>);
	print "Enter the DOB: ";
	chomp($dob=<STDIN>);
	print "Enter the salary: ";
	chomp($salary=<STDIN>);
}
print FILE "$name $phone $street $dob $salary\n";
print HANDOUT "$name\n" if($salary >= 50000);
close(FILE);

