#!/usr/bin/env perl -w
while($inputline=<DATA>){
	($name, $phone, $street, $dob, $salary) = split(":", $inputline);
		print "$street\n" if $name =~ /^norma/i;
		print "$salary\n" if $salary =~ s/$salary*/$salary+250/eg;
		print "$inputline\n" if $. >= 2 && $. <= 6;
		print "$name $phone\n" if $phone =~ /^408/;
		print "$name $salary\n" if $. =~ /3|4|5/; 
		print "$inputline\n" if $inputline =~ s/100$/\n*****************************\n/;
		print "$street\n" if $street =~ s/CA*/California/g;
		print "$inputline\n" if $inputline =~ s/8500$/\n*****************************\n/;
		print "$name $dob\n" if $dob =~ /^3/;
		print "$inputline\n" if $inputline !~ /^Karen/;
		print "$inputline\n" if $inputline =~ /\d\d\d\d\d$/;
		print "$name\n" if $name =~ s/(\w+)\s(\w+)/$2, $1/;    
}
$loriage= 2014-1965;
print $loriage;

__DATA__
Tommy Savage:408-724-0140:1222 Oxbow Court, Sunnyvale, CA 94087:5/19/66:34200
Lesle Kerstin:408-456-1234:4 Harvard Square, Boston, MA 02133:4/22/62:52600
Jon DeLoach:408-253-3122:123 Park St., San Jose, CA 94086:7/25/53:85100
Ephram Hardy:293-259-5395:235 Carlton Lane, Joliet, IL 73858:8/12/20:56700
Betty Boop:245-836-8357:635 Cutesy Lane, Hollywood, CA 91464:6/23/23:14500
William Kopf:846-836-2837:6937 Ware Road, Milton, PA 93756:9/21/46:43500
Norma Corder:397-857-2735:74 Pine Street, Dearborn, MI 23874:3/28/45:245700
James Ikeda:834-938-8376:23445 Aster Ave., Allentown, NJ 83745:12/1/38:45000
Lori Gortz:327-832-5728:3465 Mirlo Street, Peabody, MA 34756:10/2/65:35200
Barbara Kerz:385-573-8326:832 Ponce Drive, Gary, IN 83756:12/15/46:268500
