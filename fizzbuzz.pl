#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Harness;

sub run_tests {
  print "\nRunning tests\n";
  is(fizzbuzz(1), 1, 'speak number by 1');
  is(fizzbuzz(2), 2, 'speak number by 2');

  is(fizzbuzz(3), 'Fizz', 'speak Fizz by 3');
  is(fizzbuzz(6), 'Fizz', 'speak Fizz by 6');

  is(fizzbuzz(5), 'Buzz', 'speak Buzz by 5');
  is(fizzbuzz(10), 'Buzz', 'speak Buzz by 10');

  is(fizzbuzz(15), 'FizzBuzz', 'speak FizzBuzz by 15');
  is(fizzbuzz(30), 'FizzBuzz', 'speak FizzBuzz by 30');
    
  done_testing(8);

  exit;
}

sub main {
    my $limit = int($ARGV[0] || 100);
    print "FizzBuzz Output\n";
    for (1..$limit) {
        print "$_: " . fizzbuzz($_)."\n";
    }
}

sub fizzbuzz {
    my $is_fizz = ($_[0] % 3 == 0);
    my $is_buzz = ($_[0] % 5 == 0);
    return 'FizzBuzz' if ($is_fizz && $is_buzz);
    return 'Fizz' if ($is_fizz);
    return 'Buzz' if ($is_buzz);
    $_[0];
}
main;
run_tests if $ENV{HARNESS_ACTIVE};
