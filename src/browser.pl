#!/usr/bin/env -S perl -w
# vim: ft=perl:

use strict;
use warnings;

my $FILE;
if (-t STDIN) {
	open $FILE, "<$ENV{HOME}/.uricap" or die;
} else {
	$FILE=$STDIN;
}

my $target=$ARGV[0];

my $delimiter = " ";
while (<$FILE>) {
	my ($regex, $handler) = $_ =~ /(.+?)$delimiter(.*)/;
	if (my @args = $target =~ /$regex/) {
		exec "echo '$handler' | bash /dev/stdin " . join(" ", @args);
	}
}
