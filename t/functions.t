use strict;
use warnings;
use utf8;
use Test::More tests => 8;
use Test::Warn;
use Text::Ligature qw( :all );

is(
    to_ligature('offloading floral offices refines effectiveness'),
    'oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness',
    'to ligatures'
);

is(
    from_ligature('oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness'),
    'offloading floral offices refines effectiveness',
    'from ligatures'
);

is   to_ligature( 'after stop' ), 'after stop', 'ligatures not in defaults';
is from_ligature( 'aﬅer ﬆop'   ), 'after stop', 'from st-ligature';

warning_is { to_ligature() } {
    carped => 'to_ligature() expects one argument'
}, 'too few args passed to to_ligature()';

warning_is { to_ligature('foo', 'bar') } {
    carped => 'to_ligature() expects one argument'
}, 'too many args passed to to_ligature()';

warning_is { from_ligature() } {
    carped => 'from_ligature() expects one argument'
}, 'too few args passed to from_ligature()';

warning_is { from_ligature('foo', 'bar') } {
    carped => 'from_ligature() expects one argument'
}, 'too many args passed to from_ligature()';
