#!/bin/perl

=pod

L<https://theweeklychallenge.org/blog/perl-weekly-challenge-289#TASK1>

Author: Niels 'PerlBoy' van Dijke

Task 1: Third Maximum
Submitted by: Mohammad Sajid Anwar

You are given an array of integers, @ints.

Write a script to find the third distinct maximum in the given array.
If third maximum doesn’t exist then return the maximum number.

=cut

use v5.32;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use common::sense;

use Test2::V0 qw(-no_srand);

sub nThMaximum :prototype(\@$) ($arInts,$n){ 
  my $n2 = ($#$arInts+1 >= $n ? $n : $#$arInts+1);
  (sort { $a <=> $b } @$arInts)[-$n2];
}

is(nThMaximum(@{[5,6,4,1]},3),4,'Example 1');
is(nThMaximum(@{[4,5]},3),4,'Example 2');
is(nThMaximum(@{[1,2,2,3]},3),2,'Example 3');
is(nThMaximum(@{[5,3,2]},2),3,'Own example');

done_testing;
