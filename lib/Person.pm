package Person;

sub new {
    my $class = shift;
    my %args = @_;

    return bless \%args, $class;
}

sub name {
    my $self = shift;
    my $new_name = shift;

    $self->{name} = $new_name if $new_name;

    return $self->{name};
}

sub age {
    my ( $self, $new_age ) = @_;
    $self->{age} = $new_age if $new_age;
    return $self->{age};
}

1;
