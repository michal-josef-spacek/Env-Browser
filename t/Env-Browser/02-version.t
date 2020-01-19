use strict;
use warnings;

use Env::Browser;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Env::Browser::VERSION, 0.07, 'Version.');
