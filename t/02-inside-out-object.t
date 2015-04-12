use Test::Most tests => 2;
use Dog;

my $d = Dog->new( name => "Brian" );

is $d->name, "Brian", "The dog's name is accessible via a method call.";
dies_ok{ $d->{name} } "\$d is not a hashref";
