#!C:/Perl64/bin/perl.exe -w
$line1 = "Ouch";
$line2 = "You musn\'t do that";
print "Content-type: text/html \n\n"; #HTTP header
print <<ENDHTML;
<html>
<head>
<title>Exercise 4: #1</title>
</head>
<body>
<h2>"$line1," cried Mrs. O'Neil, "$line2 Mr. O'Neil!"</h2>
</body>
</html>
ENDHTML
