use strict;
use warnings;

use Test::Most;
use Test::MockModule;

use constant MODULE => 'Bot::IRC::History';

BEGIN { use_ok(MODULE); }
BEGIN { use_ok('Bot::IRC'); }

ok( MODULE->can('init'), 'init() method exists' );

my $plugin;
my $bot = Bot::IRC->new( connect => { server => 'irc.perl.org' } );

lives_ok( sub { Bot::IRC::History::init($bot) }, 'init()' );

done_testing;
