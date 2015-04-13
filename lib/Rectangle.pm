package Rectangle;

sub new {
    my $class = shift;
    my %args = @_;

    return bless \%args, $class;
}

sub height {
    my $self = shift;
    my $new_height = shift;

    $self->{height} = $new_height if $new_height;

    return $self->{height};
}

sub width {
    my ( $self, $new_width ) = @_;
    $self->{width} = $new_width if $new_width;
    return $self->{width};
}

1;
