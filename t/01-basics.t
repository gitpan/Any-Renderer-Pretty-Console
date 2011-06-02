#!perl

use 5.010;
use strict;
use warnings;

use Any::Renderer;
use Test::More 0.96;

require_ok('Any::Renderer::Pretty::Console');

my $r = Any::Renderer->new(
    'Pretty::Console',
    {interactive=>1,
     table_column_orders=>[[qw/b a c/]]});

my $d = [{a=>1, b=>2, c=>3}];
my $s = $r->render($d);

like($s, qr/----.+\n\| b \| a \| c \|\n/, "output");

done_testing();
