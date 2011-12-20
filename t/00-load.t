use strict;
use warnings;
use Test::More tests => 1;

BEGIN { use_ok 'Text::Ligature', qw( to_ligature from_ligature ) }

diag "Testing Text::Ligature $Text::Ligature::VERSION, Perl $], $^X";
