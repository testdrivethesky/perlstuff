package K12;
use Carp;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

sub new{       
	my $class = shift;
	my(%params)=@_;   
	my $objptr={
		"Name"=>$params{"Name"} || croak("No name assigned"),
		"Major"=>$params{"Major"},
		"Courses"=>$params{"Courses"},
		"Address"=>$params{"Address"},
		"ID"=>$params{"ID"},
		"StartDate"=>$params{"StartDate"},
		"Tuition"=>$params{"Tuition"},
		((defined $params{"IdNum"})?("IdNum"=>$params{"IdNum"}):
		    ("IdNum"=>"Student's id was not provided!"
		)),
	};

	return bless($objptr,$class);
}
sub show_student{
	my $self=shift;
	while( ($key, $value)=each %$self){
 		print $key, $value, "\n";
	}
	print "\n";
}
1;

