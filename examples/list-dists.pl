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

# select all cpan distnames
my $cpandists = ORDB::CPAN::Mandriva->selectcol_arrayref(
    'SELECT DISTINCT dist FROM module ORDER BY dist'
);

{
    local $\ = "\n";    # make sure we print one dist per line
    print for grep { defined } @$cpandists;
}

exit;
__END__

=head1 DESCRIPTION

This small script prints all CPAN distributions available in Mandriva,
one per line.
