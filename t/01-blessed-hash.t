use Test::Most tests => 5;
use Rectangle;

my $r = Rectangle->new( height => 100 );

is $r->height, 100, "The rectangle's height is accessible via a method call.";
is $r->{height}, 100, "\$r is a blessed hash so the height is available from the hash itself.";

is $r->width, undef, "The rectangle's width is not yet set.";
is $r->width(30), 30, "We can set the rectangle's width.";
is $r->width, 30, "The rectangle's width definitely got set.";
