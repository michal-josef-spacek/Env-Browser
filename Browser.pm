package Env::Browser;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(run);
Readonly::Scalar our $SPACE => q{ };

# Version.
our $VERSION = 0.01;

# Run browser.
sub run {
	my $uri = shift;

	# Environment $BROWSER variable.
	my $browser_string = $ENV{'BROWSER'};
	if (! $browser_string) {
		return;
	}

	# Split variables.
	my @browser = split m/:/ms, $browser_string;

	# Run.
	while (my $browser = shift @browser) {
		if ($browser =~ m/%s/ms) {
			$browser = sprintf $browser, $uri;
		} else {
			$browser .= $SPACE.$uri;
		}
		if ((system $browser) == 0) {
			last;
		}
	}

	return;
}

1;
