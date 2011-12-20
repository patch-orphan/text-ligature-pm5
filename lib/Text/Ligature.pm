package Text::Ligature;

use 5.006;
use strict;
use warnings;
use utf8;
use parent 'Exporter';

our $VERSION     = '0.01';
our @EXPORT_OK   = qw( to_ligature from_ligature );
our %EXPORT_TAGS = ( all => \@EXPORT_OK );

my %lig_for = (
    ff  => 'ﬀ',
    fi  => 'ﬁ',
    fl  => 'ﬂ',
    ffi => 'ﬃ',
    ffl => 'ﬄ',
    ft  => 'ﬅ',
    st  => 'ﬆ',
);

my %chars_for = reverse %lig_for;

sub to_ligature {
    my ($text) = @_;

    # longest token matching
    for my $chars (sort { length $b <=> length $a } keys %lig_for) {
        $text =~ s/$chars/$lig_for{$chars}/g;
    }

    return $text;
}

sub from_ligature {
    my ($text) = @_;

    for my $lig (keys %chars_for) {
        $text =~ s/$lig/$chars_for{$lig}/g;
    }

    return $text;
}

1;

__END__

=encoding utf8

=head1 NAME

Text::Ligature - Replace sequences of characters with typographic ligatures

=head1 VERSION

This document describes Text::Ligature version 0.01.

=head1 SYNOPSIS

    use Text::Ligature qw( :all );

    to_ligature('offloading floral offices refines effectiveness');
    # returns: oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness

    from_ligature('oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness');
    # returns: offloading floral offices refines effectiveness

=head1 DESCRIPTION

Replaces sequences of characters with corresponding typographic ligatures.

    Ligature    Non-ligature
    ﬀ           ff
    ﬁ           fi
    ﬂ           fl
    ﬃ           ffi
    ﬄ           ffl
    ﬅ           ft
    ﬆ           st

This is an early release.  Specifying the ligatures to replace will be
supported in a future version.

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2011 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
