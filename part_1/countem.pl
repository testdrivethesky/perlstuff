#!c:/Perl64/bin/perl.exe

use CGI;
$q = new CGI;
print $q->header;
print $q->start_html("Countem");

$visit = 'C:\wamp\www\town_crier.log';
if (open (FILE, ">" . $visit)) {
        $no_accesses = <FILE>;
        close (FILE);
        if (open (FILE, ">" . $visit)) {
            $no_accesses++;
            print FILE $no_accesses;
            close (FILE);
            print $no_accesses;
        } else {
            print "[ Can't write to the data file! Counter not incremented! ]", "\n";
        }
} else {
        print "[ Sorry! Can't read from the counter data file ]", "\n";
}
exit (0);