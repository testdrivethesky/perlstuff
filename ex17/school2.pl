#!c:/Perl64/bin/perl.exe

use DBI;

print "What would you like to do? Please select add, update, delete, display, or exit.";
chomp($choice=<STDIN>);
	$choice=lc($choice);
if ($choice eq "add") {
    &add();
}
elsif ($choice eq "update") {
    &update();
} 
elsif ($choice eq "delete") {
    &del();
} 
elsif ($choice eq "display") {
    &show();
} 
elsif ($choice eq "exit") {
    &leave();
}
else {
    print "Invalid answer.";
}

sub update{
 my $studentupdate;
 my $gpaupdate;
 my $count;
 my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12')
	or die "Can't connect: " . DBI->errstr;
 print "Please enter the student's last name: ";
 chomp($last_name=<STDIN>);

 # Show user the table before he tries to update it
 my $sth=$dbh->prepare(qq/SELECT * FROM student 
 	 WHERE LastName="$last_name"/) or die "Select failed: ". $DBI::errstr;
 $sth->execute() or die "Execute failed:".$DBI::errstr;
 while(($StudentID, $FirstName, $LastName, $Email, $CellPhone, $Major, $GPA, $Start_Date) = $sth->fetchrow_array()){
 	 $count++;
 	 print "\nData for $last_name before update:\n"if $count == 1;
 	 print "\t\tFirst_Name=$FirstName\n";
	 print "\t\tGPA=$GPA\n\n";
 }
 if ($count==0){ die "The student you entered doesn't exist.\n";}
 print "Please enter the name change for $last_name ";
 chomp($studentupdate=<STDIN>);

 print "How many points has $last_name GPA increased since the last update? ";
 chomp($gpaupdate=<STDIN>);

 $dbi->do(qq/UPDATE student SET lname=lname+$studentupdate
 	 WHERE lname = ? /, undef, "$last_name") or
 	 die "Can't update :". DBI->errstr;

 $dbi->do(qq/UPDATE student SET grades=grades+$gpaupdate
 	 WHERE lname = ? /, undef, "$last_name") or
 	 die "Can't update :". DBI->errstr;

 # Show the user the table after it is updated
 print "\nData for $last_name after update:\n";    
 $sth=$dbi->prepare(qq/SELECT * FROM student WHERE 
 LastName="$last_name"/);
 $sth->execute();
 while(($name, $lname, $grades) = $sth->fetchrow_array()){
 	 print "\t\tlname=$lname\n";
 	 print "\t\tgrades=$grades\n\n";
 }
}

sub add {
my $idadd;
my $fadd;
my $ladd;
my $email;
my $cell;
my $majadd;
my $gradeadd;
my $startadd;
my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12')
	or die "Can't connect: " . DBI->errstr;

	print "Please add the information below: ";
	print "ID Number:  ";
	chomp($idadd=<STDIN>);
	print "First Name ";
	chomp($fadd=<STDIN>);
	print "Last Name  ";
	chomp($ladd=<STDIN>);
	print "Email Address ";
	chomp($email=<STDIN>);
	print "Cell Phone  ";
	chomp($cell=<STDIN>);
	print "Major ";
	chomp($majadd=<STDIN>);
	print "GPA  ";
	chomp($gradeadd=<STDIN>);
	print "Start Date ";
	chomp($startadd=<STDIN>);

 $dbh->do(qq/INSERT INTO student(StudentID, FirstName, LastName, Email, CellPhone, Major, GPA, Start_Date)
            VALUES(?,?,?,?,?,?,?,?)/, undef, $idadd, $fadd, $ladd, $email, $cell, $majadd, $gradeadd, $startadd); 
 $dbi->disconnect();
 }
 
 sub del {
 my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12')
	or die "Can't connect: " . DBI->errstr;
 print "Enter the last name of the student you want to delete: ";
	chomp($name=<STDIN>);
	my $sth=$dbh->prepare('SELECT count(*) from student WHERE LastName = ?');
	$sth->execute($name);
	print "Number of rows to be deleted: ", $sth->fetchrow_array(), "\n";
	print "Continue? ";
	chomp($ans = <STDIN>);
	$ans=lc($ans);
	if ( $ans =~ /y|yes/){
  			$num=$dbh->do(qq/DELETE from student WHERE LastName = ?/, undef, 
			$name);
   			print ($num > 1 ?"$num rows deleted.\n":"$num row deleted.\n");
	}
	else {
  			die "You have not chosen to delete any entries. Good-bye.\n";
	}   
$sth->finish();
$dbh->disconnect();
}

sub show {
my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12')
	or die "Can't connect: " . DBI->errstr;
$sth=$dbh->prepare("SELECT * FROM student")
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
}

sub leave {
my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12')
	or die "Can't connect: " . DBI->errstr;
print "Goodbye!";
$sth->finish();
$dbh->disconnect();
}