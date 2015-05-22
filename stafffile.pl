#!/usr/bin/perl -w

$file='C:\Perl64\libstaffraise';
open(LIBSTAFFRAISE, ">$file") || die "Can't open libstaffraise: $!\n";

open(STAFF, "staff.names") || die "Can't open staff: $!\n";
binmode( LIBSTAFFRAISE );
binmode( STAFF );
while($inputline=<STAFF>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
	chomp($inputline); 
	sub print if $inputline{$name}++ == 1;
	print LIBSTAFFRAISE "$name $salary\n" if $salary =~ s/$salary/$salary*1.1/eg;
}
   
close (LIBSTAFFRAISE);	
close(STAFF);


$files="staff.names";
print "File exists and has read, write, and execute set.\n" 
		if -e $files && -r _ && -w _;
printf "File was last modified %f days ago.\n", -M $files;