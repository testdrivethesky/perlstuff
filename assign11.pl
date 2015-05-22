#!/usr/bin/env perl -w
sub params{
	print 'You have entered the following values:', "@_\n";
	print "The first value is $_[0]\n";
	print "The last value is ", pop(@_),"\n";
	while(@_){  
	if ($_[0] >= 0 && $_[0] < 100) {print "Generalities\n";}
	elsif ($_[0] >= 100 && $catnumber < 200) {print "Philosophy \& Psychology\n";}
	elsif ($_[0] >= 200 && $_[0] < 300) {print "Religion\n";}
	elsif ($catnumber >= 300 && $catnumber < 400) {print "Social Sciences\n";}
elsif ($catnumber >= 400 && $catnumber < 500) {print "Languages\n";}
elsif ($catnumber >= 500 && $catnumber < 600) {print "Sciences\n";}
elsif ($catnumber >= 600 && $catnumber < 700) {print "Technology\n";}
elsif ($catnumber >= 700 && $catnumber < 800) {print "Arts\n";}
elsif ($catnumber >= 800 && $catnumber < 900) {print "Literature\n";}
elsif ($catnumber >= 900 && $catnumber < 1000) {print "History \& geography\n";}
	else {print "Error found."};

}
	}

print "Please enter your selected catalog numbers : ";
@n=split(',',<STDIN>);
&params(@n); 
print "Back in main\n";
print "The new values are @n \n";
