package Dog;

my %name, %age;

sub new {
    my $class = shift;
    my %args = @_;
    my $self = bless \{my $dummy}, $class;

    $name{$self} = $args{name};

    return $self;
}

sub name {
    my $self = shift;
    my $new_name = shift;

    $name{$self} = $new_name if $new_name;

    return $name{$self};
}

sub age {
    my $self = shift;
    my $new_age = shift;

    $age{$self} = $new_age if $new_age;

    return $age{$self};
}

1;
