#!c:/Perl64/bin/perl.exe
use lib("lib");
use Student;

$ptr1 = Student->new();  
$ptr2 = Student->new();
$ptr3 = Student->new();

$ptr1->set("Name", "Jody Rogers"); 
$ptr1->set("Major", "Law");

$ptr2->set("Name", "Christian Dobbins");
$ptr2->set("Major", "Drama");

$ptr3->set("Name", "Tina Savage");
$ptr3->set("Major", "Art");

$ptr1->display();  
$ptr2->display();
$ptr3->display();

print "\nThe major for ", $ptr1->get("Name"),
      " is ", $ptr1->get("Major"), ".\n\n";  
