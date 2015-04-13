use Test::Most tests => 5;
use Person;

my $p = Person->new( name => "Paula" );

is $p->name, "Paula", "The person's name is accessible via a method call.";
is $p->{name}, "Paula", "\$p is a blessed hash so the name is available from the hash itself.";

is $p->age, undef, "The person's age is not yet set.";
is $p->age(30), 30, "We can set the person's age.";
is $p->age, 30, "The age definitely got set.";
