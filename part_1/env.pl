#!c:/Perl64/bin/perl.exe 
use CGI qw(:standard);
print header;
print start_html(-title=>'Using header Methods'),
h1("Let's find out about this session!"),
p, 
h4 "The name of the server is: ", server_name(), 
p,
"The gateway protocol is: ", self_url(),
p,
"The client machine's IP address is: ", remote_addr(),
p,
"The client machine's name is: ", $ENV{remote_user},
p, 
"The document root is: ", document_root(),
p,
"The CGI script name is: \n", self_url(), 

print end_html;

