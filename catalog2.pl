#!/usr/bin/env perl -w

print "Which name are you searching?     ";

while($inputline=<DATA>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
	chomp($namelook = <STDIN>); 
		print "Please wait for details on Tommy Savage.\n" if $namelook =~ /^T/i;		
		print "Search: $namelook, $inputline\n" if $namelook =~ /^B/gi;      
		print "Do you want to enter another name? (y/n) ";
		chomp($choice=<STDIN>);
		if ($choice ne "y"){last ;} 
}

__DATA__
Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale,CA 94087:5/19/66:34200
Betty Boop:245-836-8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
