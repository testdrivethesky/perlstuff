#!/usr/bin/perl -w

$file='C:\Perl64\raise';
open(RAISE, ">$file") || die "Can't open raise: $!\n";

open(DATEBOOK, "datebook2.names") || die "Can't open datebook: $!\n";
binmode( RAISE );
binmode( DATEBOOK );
while($inputline=<DATEBOOK>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
	chomp($inputline); 
	sub print if $inputline{$name}++ == 1;
	print RAISE "$name $salary\n" if $salary =~ s/$salary/$salary*1.1/eg;
}
   
close (RAISE);	
close(DATEBOOK);


$files="datebook2.names";
print "File exists and has read, write, and execute set.\n" 
		if -e $files && -r _ && -w _;
printf "File was last modified %f days ago.\n", -M $files;