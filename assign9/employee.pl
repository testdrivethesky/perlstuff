#!c:/Perl64/bin/perl.exe
use Employee;
use warnings;

my($name, $extension, $subject, $level);
print "Enter the employee's name. ";
chomp($name=<STDIN>);
print "Enter the employee's phone extension. ";
chomp($extension=<STDIN>);
print "Enter the employee's subject speciality. ";
chomp($subject=<STDIN>);
print "Enter the employee's job level. ";
chomp($level=<STDIN>);

# Passing parameters as a hash
$employee = Employee->new( "Name"=>$name,        
                           "Extension"=>$extension,
                           "Subject"=>$subject,
                           "Level"=>$level,
                        );
print "\nThe statistics for $name are: \n";

$employee->get_stats;	