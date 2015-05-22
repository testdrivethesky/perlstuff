package RightNow;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
@ISA = qw(Exporter);

sub new{      # Constructor
  	my $class=shift;
  	my $dptr={};
  	bless($dptr, $class);
}
sub set_time{            # Access Methods
	my $self= shift;
	my $loc=localtime();
}
sub print_time{
	my $self= shift;
	my $timein=@_;
	my $loc=localtime();
	my $standard= ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =
                                                localtime(time);
	my $shour = ($hour > 11 ? $hour - 12 : $hour);
	print "Time now: $loc\n";
	if ($timein eq "Military" || "Standard") {print "Time now: $shour";}
}
1;

