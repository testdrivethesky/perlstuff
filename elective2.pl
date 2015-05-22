#!/usr/local/bin/perl -w 
sub asc_sort_elective {
	$elective{$a} cmp $elective{$b};
}

%elective = (
	     "2CPR2B" => "C Language",
	     "1UNX1B" => "Intro to UNIX",
             "3SH414" => "Shell Programming",
             "4PL400" => "Perl Programming",
            );
$date=localtime;
$course=$elective{'4PL400'};

print "REGISTRATION INFORMATION FOR SPRING QUARTER:\n";
print "Today's date is $date\n";
print "Please enter the following information:\n";
print "Your full name:      ";
$name = <STDIN>;
print "What is your Social Security Number (xxx-xx-xxxx):    ";
$ssn = <STDIN>;
print "$ssn\n";
print "Your address:\n";
print "Street:         ";        
$street = <STDIN>;
print "City, State, Zip:        ";        
$csz = <STDIN>;
print "EDP NUMBERS AND ELECTIVES:\n";        
foreach $key (sort asc_sort_elective(keys(%elective))) {
	printf ("%-8s | %s\n", "$key", "$elective{$key}");
}
print "What is the EDP number of the course you wish to take?\n";
$elective{$course} = <STDIN>;
print "The course you will be taking is $course.\n";
print "Registration confirmation will be sent to your address at\n";
print "$street";
print "$csz";
print "Thank you, $name, for enrolling.";
