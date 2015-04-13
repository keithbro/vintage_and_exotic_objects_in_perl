package Cow;

sub new {
    my $class = shift;
    my %args = @_;

    my $self = [
        $args{name}, $args{age},
    ];

    return bless $self, $class;
}

sub name {
    my ( $self, $new_val ) = @_;
    $self->[0] = $new_val if $new_val;
    return $self->[0];
}

sub age {
    my ( $self, $new_val ) = @_;
    $self->[1] = $new_val if $new_val;
    return $self->[1];
}

1;
