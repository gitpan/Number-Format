# -*- Perl -*-
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl (testname).t'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..5\n"; }
END {print "not ok 1\n" unless $loaded;}
use Number::Format qw(:subs);
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

$pic = 'US$##,###,###.##';

print "not " unless (format_picture(123456.512, $pic) eq 'US$   123,456.51');
print "ok 2\n";

print "not " unless (format_picture(1234567.509, $pic) eq 'US$ 1,234,567.51');
print "ok 3\n";

print "not " unless (format_picture(12345678.5, $pic) eq 'US$12,345,678.50');
print "ok 4\n";

print "not " unless (format_picture(123456789.51, $pic) eq 'US$**,***,***.**');
print "ok 5\n";
