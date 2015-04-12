use strict;
use warnings;

use Test::More tests => 2;
use Dog;

my $d = Dog->new( name => "Brian" );

is $d->name, "Brian", "The dog's name is accessible via a method call.";
is $d->{name}, "Brian", "\$p is an inside out object so the name is NOT available from the hash itself."
