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
$course=$elective{'3SH414'};
foreach $key (sort asc_sort_elective(keys(%elective))) {
	printf ("%-8s, %s\n", "$key", "$elective{$key}");
}
print "Type the code number for the course you plan on taking:";
$elective{$course} = <STDIN>;
print "You will be taking $course this summer.\n";
