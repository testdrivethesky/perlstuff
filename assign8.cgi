#!c:/Perl64/bin/perl.exe

use DBI;
use CGI qw(:standard);

print header, start_html(-title=>"Customer Lookup",
                         -BGCOLOR=>"#BBB4D6"
                        );
print start_form,"<font face='arial' size='+1'>
Look up which customer? ",textfield('CompanyName'),p;
print submit, end_form, hr;

if(param()) {
	$cust = param('CompanyName%');
	my $dbh = DBI->connect('DBI:mysql:northwind;user=root;password=pendesk12')
		or die "Can't connect: " . DBI->errstr;
	$sth=$dbh->prepare("SELECT CompanyName, ContactName, City
                          FROM Customers where CompanyName = ?"
                          );
	$sth->execute($cust);
	if ($sth->rows == 0){ 
		print "Your customer isn't in the table.<br>"; 
		exit;
	}
	print h2("Data for \u$cust");
	while(($CompanyName,$ContactName, $ContactTitle, $Address, $City, $Region) = $sth->fetchrow_array()){
		print <<EOF;
		<table border="1" bgcolor="blue">
			<tr>
				<th>CompanyName</th>
				<th>Contact</th>
				<th>City</th>
			</tr>
			<tr>
				<td>$CompanyName</td>
				<td>$ContactName</td>
				<td>$City</td>
			</tr>
		</table>
EOF
		print end_html();
		$sth->finish();
		$dbh->disconnect();
	}                      
}  