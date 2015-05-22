#!C:/Perl64/bin/perl.exe -w
$today=localtime;
$name="Perl script";
$dec=125;
$line="12.50";
$line2="No way";
print "Content-type: text/html \n\n"; #HTTP header
print "<html><head><title>Exercise 4: Questions #3-#5</title></head>";
print "<body><h2>Today is $today.</h2> \n\n";
print "<h2>The name of this \U$name \E is literals.</h2> \n";
printf "<h2>Hello. The number we will examine is %.1f</h2> \n", 125.54;
print "<h2>The \Unumber \E in decimal is $dec.</h2>";
printf "<h2>The following number is taking up 20 spaces and is right justified |%20d|</h2>\n", 125;
printf ("<h2>%80s", "The number in hex is 7d</h2> \n");
printf ("<h2>%80s", "The number in octal is 175</h2> \n");
printf "<h2>The number in scientific notation is %e</h2> \n", 125.50;
printf "<h2>The unformatted number is %.5f</h2> \n", 125.5;
printf "<h2>The formatted number is %.2f</h2> \n", 125.5;
print "<h2>My boss just said \"Can't you loan me \$$line for my lunch?\"</h2> \n";

print "<h2>I flatly said, \"$line2!\"</h2> \n";
print "<h2>Good-bye \(makes a beep sound\)</h2> \n";
print "<h2>The \-c switch allows you to check script syntax.</h2> \n";
print "<h2>Life is good with Perl</h2> \n";
print "<h2>I have just completed my second exercise!</h2> \n";
print "<h2>The \-w switch allows you to turn on warnings. Adding \"use diagnostics\" turns on the diagnostics pragma.</h2></body></html>";