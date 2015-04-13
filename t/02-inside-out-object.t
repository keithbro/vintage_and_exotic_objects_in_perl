use Test::Most tests => 5;
use Dog;

my $d = Dog->new( name => "Brian" );

is $d->name, "Brian", "The dog's name is accessible via a method call.";
dies_ok{ $d->{name} } "\$d is not a hashref";

is $d->age, undef, "The dog's age is not yet set.";
is $d->age(10), 10, "We can set the dog's age.";
is $d->age, 10, "The age definitely got set.";
