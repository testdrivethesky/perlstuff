#!/usr/local/bin/perl -w 
@names=qw(Nick Susan Chet Dolly Bill);
@discarded=splice(@names, 1, 2, "Ellie", "Beatrice", "Charles");
@discarded2=splice(@names, 5, 1, "Lewis", "Izzy");
@discarded3=splice(@names, 0, 1, "Archie");
@discarded4=splice(@names, 4, 1, "Christian", "Daniel");
@sorted=sort(@names);
@rev=reverse(sort(@names));
print "@names \n";
print "@discarded \n";
print "@discarded2 \n";
print "@discarded3 \n";
print "@discarded4 \n";
print "@rev \n";
print "@sorted \n";