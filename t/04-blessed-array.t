use Test::Most tests => 5;
use Cow;

my $c = Cow->new( name => "Betty" );

is $c->name, "Betty", "The cow's name is accessible via a method call.";
is $c->[0], "Betty", "\$p is a blessed array so the name is available from the hash itself.";

is $c->age, undef, "The cow's age is not yet set.";
is $c->age(30), 30, "We can set the cow's age.";
is $c->age, 30, "The age definitely got set.";
