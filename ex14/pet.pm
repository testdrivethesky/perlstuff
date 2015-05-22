package Pet;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);  

sub new{
	my $class = shift;
	my ($owner, $name, $sex, $food) = @_;

	my $ref={ "Owner"=>$owner,
	          "Name"=>$name,
	          "Sex"=>$sex,
			  "Food"=>$food,
	        };   
 	return bless($ref, $class);
}

sub eat {
	my $self = shift;
	print "What kind of pet food do you prefer? ";
	chomp($self->{Food}=<STDIN>);
}

sub display {           
	my $self = shift;   
	foreach $key ( @_){
		print "$key: $self->{$key}\n";
	}
}
1;