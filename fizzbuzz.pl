#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Harness;

sub run_tests {
  print "\nRunning tests\n";
  is(fizzbuzz(1), 1, 'number by 1');
  is(fizzbuzz(2), 2, 'number by 2');

  is(fizzbuzz(3), 'Fizz', 'Fizz by 3');
  is(fizzbuzz(6), 'Fizz', 'Fizz by 6');

  is(fizzbuzz(5), 'Buzz', 'Buzz by 5');
  is(fizzbuzz(10), 'Buzz', 'Buzz by 10');

  is(fizzbuzz(15), 'FizzBuzz', 'FizzBuzz by 15');
  is(fizzbuzz(30), 'FizzBuzz', 'FizzBuzz by 30');
    
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
