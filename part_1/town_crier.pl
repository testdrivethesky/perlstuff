#!c:/Perl64/bin/perl.exe
use CGI;
$query = new CGI;
print $query->header;
print $query->start_html("Town Crier");
print "<H2>Town Crier</H2>\n";

&welcome();
print $query->h2("We welcome thee, Sir Richard. You are visitor number: ");

open(READMEFILE, "countem.pl") || die;
&countem(*READMEFILE);     

sub countem{
	local(myfile)=@_;    
	while(<myfile>){
		print;
	}
}
close(READMEFILE);
print $query->end_html;

sub welcome{
	print $query->h3("Welcome, Sir Richard!!");
	$localtime = localtime; #ctime was not working in my CGI.pm installation...
	print $query->h1("Today we celebrate $localtime");
	print "<HR>\n";
}

