use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Env::Browser');
}

# Test.
require_ok('Env::Browser');
