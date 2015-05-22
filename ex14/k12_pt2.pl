#!/usr/bin/env perl -w

use K12;
use warnings;

my($name, $major, $courses, $addy, $stuid, $stdate, $tuition, $CName);
print "Enter the student's name. ";
chomp($name=<STDIN>);
print "Enter the student's major. ";
chomp($major=<STDIN>);
print "Enter the student's courses. ";
chomp($courses=<STDIN>);
print "Enter the student's Address. ";
chomp($addy=<STDIN>);
print "Enter the student's ID. ";
chomp($stuid=<STDIN>);
print "Enter the student's start date. ";
chomp($stdate=<STDIN>);
print "Enter the student's tuition. ";
chomp($tuition=<STDIN>);
print "Which course would you like to add? ";
chomp($CName=<STDIN>);

$k12 = K12->new( 	"Name"=>$name,        
					"Courses"=>$courses,
					"Major"=>$major,
                    "Address"=>$addy,        
					"ID"=>$stuid,
					"StartDate"=>$stdate,
                    "Tuition"=>$tuition,
                        );
						
$k12two = K12->new(	"CName"=>$CName,
						);
{my $class = K12->new;
$class->{Name}="John Dobbins";
}
						
$k12two->add_courses;
$k12->show_student;

$file = "C:\Perl64\classes";
open(CLASS, ">>$file") || die "Can't open file: $!\n";
print CLASS ($k12->show_student);	
close(CLASS);