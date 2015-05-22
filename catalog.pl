#!/usr/local/bin/perl -w

print "Please enter the catalog number:   ";

while(1){ 
	$catnumber = <STDIN>;
	if ($catnumber < 0 || $catnumber > 999) {
		print "Illegal choice\n";
		next; } 
	if ($catnumber >= 0 && $catnumber < 100) {print "Generalities\n";}
	elsif ($catnumber >= 100 && $catnumber < 200) {print "Philosophy \& Psychology\n";}
	elsif ($catnumber >= 200 && $catnumber < 300) {print "Religion\n";}
	elsif ($catnumber >= 300 && $catnumber < 400) {print "Social Sciences\n";}
elsif ($catnumber >= 400 && $catnumber < 500) {print "Languages\n";}
elsif ($catnumber >= 500 && $catnumber < 600) {print "Sciences\n";}
elsif ($catnumber >= 600 && $catnumber < 700) {print "Technology\n";}
elsif ($catnumber >= 700 && $catnumber < 800) {print "Arts\n";}
elsif ($catnumber >= 800 && $catnumber < 900) {print "Literature\n";}
elsif ($catnumber >= 900 && $catnumber < 1000) {print "History \& geography\n";}
	else {print "Error found."};
	print "Do you want to enter another number? (y/n) ";
	chomp($choice=<STDIN>);
	if ($choice ne "y"){last ;} 

}


