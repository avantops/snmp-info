#!/usr/bin/perl
# 00_local_distribution.t - Private test to check distribution
# $Id$

use strict;
use warnings;
use Test::More;

eval { require Test::Distribution; };

plan skip_all => 'Optional Test::Distribution not installed' if ($@);

# Skip POD tests as we will test separately
import Test::Distribution not => [ qw/pod podcover/ ];
