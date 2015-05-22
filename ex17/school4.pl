#!c:/Perl64/bin/perl.exe

use DBI qw(:sql_types);

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


sub add {
my $idadd;
my $fadd;
my $ladd;
my $email;
my $cell;
my $majadd;
my $gradeadd;
my $startadd;
my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12',
						{PrintError=>0, RaiseError=>1, AutoCommit=>0})
						or die "Connection to sample_db failed:  $DBI::errstr";

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
my @rows = ([undef, $idadd, $fadd, $ladd, $email, $cell, $majadd, $gradeadd, $startadd],
			);
 $dbh->do(qq/INSERT INTO student(StudentID, FirstName, LastName, Email, CellPhone, Major, GPA, Start_Date)
            VALUES(?,?,?,?,?,?,?,?)/, undef, $idadd, $fadd, $ladd, $email, $cell, $majadd, $gradeadd, $startadd); 
 foreach $param (@rows) {
	eval { 
	$sth->bind_param( 1, $param->[0], SQL_VARCHAR);
	$sth->bind_param( 2, $param->[1], SQL_VARCHAR);
	$sth->bind_param( 3, $param->[2], SQL_VARCHAR);
	$sth->bind_param( 4, $param->[3], SQL_VARCHAR);
	$sth->bind_param( 5, $param->[4], SQL_VARCHAR);
	$sth->bind_param( 6, $param->[5], SQL_VARCHAR);
	$sth->bind_param( 7, $param->[6], SQL_FLOAT);
	$sth->bind_param( 8, $param->[7], SQL_DATE);
	$sth->execute() or die;
	};                                      
}
if( $@ ) {  
	warn "Database error: $DBI::errstr\n";
	$dbh->rollback();      			
}
else{
	$dbh->commit();
	print "Success!\n";
}
 $dbh->disconnect();
 }
 
sub leave {
my $dbh = DBI->connect('DBI:mysql:school;user=root;password=pendesk12');
print "Goodbye!";
$dbh->disconnect();
}