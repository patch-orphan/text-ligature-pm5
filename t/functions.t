use strict;
use warnings;
use utf8;
use Test::More tests => 2;
use Text::Ligature qw( :all );

is(
    to_ligature('offloading floral offices refines effectiveness'),
    'oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness',
    'to_ligature()'
);

is(
    from_ligature('oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness'),
    'offloading floral offices refines effectiveness',
    'from_ligature()'
);
