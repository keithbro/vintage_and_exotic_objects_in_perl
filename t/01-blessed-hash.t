use Test::Most tests => 2;
use Person;

my $p = Person->new( name => "Paula" );

is $p->name, "Paula", "The person's name is accessible via a method call.";
is $p->{name}, "Paula", "\$p is a blessed hash so the name is available from the hash itself.";
