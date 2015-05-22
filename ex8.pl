#!/usr/bin/env perl -w
while($inputline=<DATA>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
		print "$street\n";
		print $inputline if $name =~ /B/gi;      
		print "$name\n" if $name =~ /Ker/gi;
		print "$phone\n" if $phone =~ /408-/g; 	
		print "$name $street\n" if $name =~ /Lori/g;
		print "$name\n" if $name =~ s/Ephram/EPHRAM/gi;
		print "$inputline\n" if $inputline !~ /4/g;  
		print "$name\n" if $name =~ s/William/Siegfried/gi; 
		print "$dob\n" if $name =~ /Tommy/gi;
		print "$name\n" if($salary >= 40000);
		print "$name $dob\n" if $dob =~ /6\//gi;
		print "$street\n" if $street =~ /MA/gi;
}

__DATA__
Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale,CA 94087:5/19/66:34200
Lesle Kerstin:408-456-1234:4 Harvard Square, Boston, MA 02133:4/22/62:52600
JonDeLoach:408-253-3122:123 Park St., San Jose, CA 94086:7/25/53:85100
Ephram Hardy:293-259-5395:235 Carlton Lane, Joliet, IL 73858:8/12/20:56700
Betty Boop:245-836-8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
William Kopf:846-836-2837:6937 Ware Road, Milton, PA 93756:9/21/46:43500
Norma Corder:397-857-2735:74 Pine Street, Dearborn, MI 23874:3/28/45:245700
James Ikeda:834-938-8376:23445 Aster Ave., Allentown, NJ 83745:12/1/38:45000
Lori Gortz:327-832-5728:3465 Mirlo Street, Peabody, MA 34756:10/2/65:35200
Barbara Kerz:385-573-8326:832 Ponce Drive, Gary, IN 83756:12/15/46:268500
