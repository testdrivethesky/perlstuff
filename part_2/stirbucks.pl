#!c:/Perl64/bin/perl.exe
use CGI;
$query = new CGI;
print $query->header;
print $query->start_html("Stirbucks Coffee");
print "<H2>Stirbucks Coffee</H2>\n";

&print_formstuff($query);
&do_work($query) if ($query->param);
print $query->end_html;

sub print_formstuff{
	my($query) = @_;
	print $query->start_form;
	print "Select a coffee to go: ";
	print $query->checkbox_group(-name=>'coffee',
	                               -values=>[ 'Espresso', 'Cappuccino',
	                                          'Caffe Latte'],
	                               -default=>[ 'Espresso' ], 
	                               -linebreak=>'true',
	                              );	
	print "<BR>";
	print "Please tell us where to send the order: <BR>";
	print "Your Name:";
	print $query->textfield('name');  
	print "<BR>";	
	print "Your Room Number:";
	print $query->textfield('room:'); 
	print "<BR>";
	print "Your Email Address:";
	print $query->textfield('email'); 
	print "<BR>";
	print $query->submit('action', 'Submit my order now!');
	print $query->reset('Clear');
	print $query->end_form;
	print "<HR>\n";
}

sub do_work{
	my ($query) = @_;
	my (@values, $key);
	print "<H2>Thank you for your order! Here are the settings</H2>";
	foreach $key ($query->param){
		print "$key: \n";
		@values=$query->param($key);
		print join(", ",@values), "<BR>";
	}
}


$mailprogram="/usr/lib/sendmail";  
$sendto="$input{name}";         
$from="$input{room}";
$subject="$input{email}";

open(MAIL, "|$mailprogram -t  -oi") || die "Can't open mail
	 program: $!\n";
# -t option takes the headers from the lines following the mail 
# command -oi options prevent a period at the beginning of  a 
# line from meaning end of input
print MAIL "Name: $sendto\n";
print MAIL "Room: $from\n";
print MAIL "Email: $subject\n\n";

close MAIL;  
