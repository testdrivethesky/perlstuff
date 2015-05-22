#!/usr/bin/perl -w 
use strict;
open(FOO, "| sort"); # Open output filter
open(DB, "datebook.names");       # Open DB for reading
while(<DB>){ print FOO ; }
close FOO;


open(LISTDIR, 'dir "C:\\test" |') || die;
binmode ( LISTDIR );
my @files=<LISTDIR>;
foreach my $file (my @filelist){
	chomp(my @filelist);	
print $file if -r @files;
	print "File has been accessed in the last 12 hours.\n" if -M @files <= 12;
}
close LISTDIR;
