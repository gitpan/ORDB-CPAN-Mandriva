#!/usr/bin/perl
# 
# This file is part of ORDB-CPAN-Mandriva
# 
# This software is copyright (c) 2010 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 

use strict;
use warnings;

use ORDB::CPAN::Mandriva;

my $nbmodules = ORDB::CPAN::Mandriva::Module->count;
print "$nbmodules modules found\n";

exit;
__END__

=head1 DESCRIPTION

This small script prints the number of Perl modules available in
Mandriva.
