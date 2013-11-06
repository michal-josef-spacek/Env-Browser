# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Process environment variable $BROWSER and run web browser.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Env-Browser';
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Env-Browser';
resources 'homepage' => 'https://github.com/tupinek/Env-Browser';
resources 'repository' => 'git://github.com/tupinek/Env-Browser';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.06;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
test_requires 'Test::Output' => 1.02;
tests_recursive;
version '0.03';

# Run.
WriteAll();
