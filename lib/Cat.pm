package Cat;

sub new {
    my $class = shift;
    my %args = @_;
    my $self = {
        name => $args{name},
    };

    my $closure = sub {
        my $field = shift;
        my $value = shift;

        $self->{$field} = $value if $value;

        return $self->{$field};
    };

    return bless $closure, $class;
}

sub name {
    my $self = shift;
    my $new_name = shift;

    &{ $self }( 'name', $new_name ) if $new_name;

    return &{ $self }( 'name' );
}

sub age {
    my $self = shift;
    my $new_age = shift;

    &{ $self }( 'age', $new_age ) if $new_age;

    return &{ $self }( 'age' );
}

1;
