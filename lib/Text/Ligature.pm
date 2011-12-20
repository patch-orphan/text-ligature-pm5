package Text::Ligature;

use 5.006;
use strict;
use warnings;
use utf8;

our $VERSION = '0.01';

1;

__END__

=encoding utf8

=head1 NAME

Text::Ligature - Replace sequences of characters with typographic ligatures

=head1 VERSION

This document describes Text::Ligature version 0.01.

=head1 SYNOPSIS

    use Text::Ligature qw( to_ligature );

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

=head1 AUTHOR

Nick Patch <patch@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2011 Nick Patch

This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
