#!c:/Perl64/bin/perl.exe

print "Content-type: text/html\n\n";

$inputstring=$ENV{QUERY_STRING};
print "<B>Before decoding:</B>";
print "<P>$inputstring";

@key_value=split(/&/,$inputstring); 
foreach $pair ( @key_value){
    ($key, $value) = split(/=/, $pair);
    $value=~s/%(..)/pack("C", hex($1))/ge;
    $value =~ s/\n/ /g;
    $value =~ s/\r//g;
    $value =~ s/\cM//g;
    $input{$key}=$value ; # Creating a hash
}
# After decoding
print "<HR>";
print "<P><B>After decoding:</B><P>";
while(($key, $value)=each(%input)){
    print "$key: <I>$value</I><BR>";
}
$mailprogram="/usr/lib/sendmail";  
$sendto="$input{es}";         
$from="$input{cap}";
$subject="$input{caflatt}";

open(MAIL, "|$mailprogram -t  -oi") || die "Can't open mail
	 program: $!\n";
# -t option takes the headers from the lines following the mail 
# command -oi options prevent a period at the beginning of  a 
# line from meaning end of input
print MAIL "Espresso: $sendto\n";
print MAIL "Cappucinno: $from\n";
print MAIL "Cafe Latte: $subject\n\n";

print MAIL <<EOF;    

Registration Information for $input{$namestring} 
	$input{$namestring}:

Date of Registration: $today


EOF
close MAIL;  
