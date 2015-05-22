package Employee;
use warnings;

sub new {
	my $class = shift;
	my(%params)=@_;   
	my $objptr={
		"Name"=>$params{"Name"} || croak("No name assigned"),
		"Extension"=>$params{"Extension"},
		"Subject"=>$params{"Subject"},
		"Level"=>$params{"Level"} || 
                  croak("No level assigned"),
		((defined $params{"IdNum"})?("IdNum"=>$params{"IdNum"}):
		    ("IdNum"=>"Employee's id was not provided!"
		)),
	};

	return bless($objptr,$class);
}
sub get_stats{
	my $self=shift;
	while( ($key, $value)=each %$self){
 		print $key, " = ", $value, "\n";
	}
	print "\n";
}
1;

