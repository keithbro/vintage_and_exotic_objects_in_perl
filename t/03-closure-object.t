use Test::Most tests => 6;
use Cat;

my $c = Cat->new( name => "Felix" );

is $c->name, "Felix", "The cat's name is accessible via a method call.";
dies_ok{ $c->{name} } "\$c is not a hashref";

is $c->age, undef, "The cat's age is not yet set.";
is $c->age(10), 10, "We can set the cat's age.";
is $c->age, 10, "The age definitely got set.";

is &{ $c }( 'name' ), "Felix", "We still have direct access to the name.";
