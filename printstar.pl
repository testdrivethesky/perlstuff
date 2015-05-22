#!/usr/bin/perl -w
%hotels = (
		"Pillowmint Lodge" 	=>	5,
		"Buxton Suites"   	=>	5,
		"The Middletonian"	=> 	3,
		"Notchbelow"		=>	4,
		"Rancho El Cheapo"	=>	1,
		"Pile Inn"			=>	2,
		);
sub desc_sort_stars {
	$hotels{$b} <=> $hotels{$a};
	}

sub printstar {	
	printf "\t %-25s%5s\n", "Hotel", "Category";
	print "---------------------------------------------------\n";
	foreach $key (sort desc_sort_stars(keys(%hotels))) {
	printf "\t %-25s%5s\n", "$key", "$hotels{$key}\n" if $hotels{$key} =~ s/5/*****/g;
	printf "\t %-25s%5s\n", "$key", "$hotels{$key}\n" if $hotels{$key} =~ s/4/****/g;
	printf "\t %-25s%5s\n", "$key", "$hotels{$key}\n" if $hotels{$key} =~ s/3/***/g;
	printf "\t %-25s%5s\n", "$key", "$hotels{$key}\n" if $hotels{$key} =~ s/2/**/g;
	printf "\t %-25s%5s\n", "$key", "$hotels{$key}\n" if $hotels{$key} =~ s/1/*/g;
}
}
&printstar;
