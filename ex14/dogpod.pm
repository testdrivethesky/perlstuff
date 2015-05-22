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

__END__

=pod
=head1 Dog.pm
=head2 Derived from the "Pet" class.
=head2 Author: Pilara Brunson, based off Ellie Quigley's "Perl by Example".
=head1 SYNPOSIS:

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
=head1 Description:

Can be used for any packages based off of the "Pet" class.
=cut