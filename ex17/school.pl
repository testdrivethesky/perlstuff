#!/usr/bin/env perl -w
use DBI;

$dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12');

$sth=$dbh->prepare_cached("SELECT * FROM student")
	or die "Can't prepare statement" . DBI->errstr;
$sth->execute();
my($StudentID, $FirstName, $LastName, $Email, $CellPhone, $Major, $GPA, $Start_Date);# Scalars that will be bound to columns
$sth->bind_columns(\$StudentID, \$FirstName, \$LastName, \$Email, \$CellPhone, \$Major, \$GPA, \$Start_Date); 
      printf "\nCurrent Students:\n\n";
      printf "%-20s%-14s%-8s\n","StudentID", "FirstName", "LastName", "Email", "CellPhone", "Major", "GPA", "Start";
     while( $sth->fetch()){  
       # Fetch a row and return column values as scalars
	   printf "%-25s%3s%8s\n", "$StudentID", "$FirstName", "$LastName", "$Email", "$CellPhone", "$Major", "$GPA", "$Start_Date";
     }
$sth->finish();
$dbh->disconnect();