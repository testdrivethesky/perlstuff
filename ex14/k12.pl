#!/usr/bin/env perl -w

use K12;
use warnings;

my($name, $major, $courses, $addy, $stuid, $stdate, $tuition);
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

$k12 = K12->new( 	"Name"=>$name,        
					"Courses"=>$courses,
					"Major"=>$major,
                    "Address"=>$addy,        
					"ID"=>$stuid,
					"StartDate"=>$stdate,
                    "Tuition"=>$tuition,
                        );
$k12->show_student;	