package Dog;
use Exporter;
use warnings;
BEGIN{unshift(@INC, ".Baseclass");};
our @ISA=qw( Pet);
use Pet;

sub new{
	my $class = shift;
	my ($owner, $name, $sex, $chat) = @_;

	my $ref={ "Owner"=>$owner,
	          "Name"=>$name,
	          "Sex"=>$sex,
			  "Talk"=>$chat,
	        };   
 	return bless($ref, $class);
}

sub speak {
	my $self = shift;
	print "What would you like to say? ";
	chomp($self->{Talk}=<STDIN>);
}

sub display {           
	my $self = shift;   
	foreach $key ( @_){
		print "$key: $self->{$key}\n";
	}
}
1;