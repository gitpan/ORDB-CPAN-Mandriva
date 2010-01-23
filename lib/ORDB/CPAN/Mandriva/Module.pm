# 
# This file is part of ORDB-CPAN-Mandriva
# 
# This software is copyright (c) 2010 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use 5.008005;
use strict;
use warnings;

package ORDB::CPAN::Mandriva::Module;
our $VERSION = '1.100230';
# ABSTRACT: orlite for module table in database

# -- attributes



# -- methods autogenerated by orlite


1;


=pod

=head1 NAME

ORDB::CPAN::Mandriva::Module - orlite for module table in database

=head1 VERSION

version 1.100230

=head1 DESCRIPTION

This class models the C<module> table in the database. It can be used
either with class methods, or as objects mapping one row of the table.

=head1 ATTRIBUTES

=head2 my $str = $module->module;

The name of the module, eg L<ORDB::CPAN::Mandriva>.

=head2 my $str = $module->version;

The version of the module (not the dist, nor the package). It may be
null.

=head2 my $str = $module->dist;

This is the CPAN distribution the module is part of, eg
C<ORDB-CPAN-Mandriva>. It may be null.

=head2 my $str = $module->pkgname;

This is the name of the package holding this module in Mandriva Linux
distribution. Chances are that it looks like C<perl-ORDB-CPAN-Mandriva>.

=head1 METHODS

=head2 select

    # Get all objects in list context
    my @list = ORDB::CPAN::Mandriva::Module->select;

    # Get a subset of objects in scalar context
    my $array_ref = ORDB::CPAN::Mandriva::Module->select(
        'where pkgname = ? order by module',
        'perl-ORDB-CPAN-Mandriva',
    );

The C<select> method executes a typical SQL C<SELECT> query on the
module table.

It takes an optional argument of a SQL phrase to be added after the
C<FROM module> section of the query, followed by variables to be bound
to the placeholders in the SQL phrase. Any SQL that is compatible with
SQLite can be used in the parameter.

Returns a list of L<ORDB::CPAN::Mandriva::Module> objects when called in
list context, or a reference to an ARRAY of
L<ORDB::CPAN::Mandriva::Module> objects when called in scalar context.

Throws an exception on error, typically directly from the L<DBI> layer.

=head2 count

    # How many objects are in the table
    my $rows = ORDB::CPAN::Mandriva::Module->count;

    # How many objects
    my $small = ORDB::CPAN::Mandriva::Module->count(
        'where pkgname = ?',
        'perl-ORDB-CPAN-Mandriva',
    );

The C<count> method executes a C<SELECT COUNT(*)> query on the
module table.

It takes an optional argument of a SQL phrase to be added after the
C<FROM module> section of the query, followed by variables to be bound
to the placeholders in the SQL phrase. Any SQL that is compatible with
SQLite can be used in the parameter.

Returns the number of objects that match the condition.

Throws an exception on error, typically directly from the L<DBI> layer.

=head2 my $module = Module->new(%params);

The C<new> constructor is used to create a new abstract object that
is not (yet) written to the database.

Returns a new L<ORDB::CPAN::Mandriva::Module> object.

=head2 $module->insert;

The C<insert> method commits a new object (created with the C<new>
method) into the database.

Returns the object itself as a convenience, or throws an exception on
error, typically from the L<DBI> layer.

=head2 delete

    # Delete a single instantiated object
    $object->delete;

    # Delete multiple rows from the module table
    ORDB::CPAN::Mandriva::Module->delete(
        'where pkgname = ?',
        'perl-ORDB-CPAN-Mandriva'
    );

The C<delete> method can be used in a class form and an instance form.

When used on an existing L<ORDB::CPAN::Mandriva::Module> instance,
the C<delete> method removes that specific instance from the
C<module>, leaving the object intact for you to deal with post-delete
actions as you wish.

When used as a class method, it takes a compulsory argument of a SQL
phrase to be added after the C<DELETE FROM module> section of the query,
followed by variables to be bound to the placeholders in the SQL phrase.
Any SQL that is compatible with SQLite can be used in the parameter.

Returns true on success or throws an exception on error, or if you
attempt to call delete without a SQL condition phrase.

=head2 truncate

    # Delete all records in the module table
    ORDB::CPAN::Mandriva::Module->truncate;

To prevent the common and extremely dangerous error case where deletion
is called accidentally without providing a condition, the use of the
C<delete> method without a specific condition is forbidden.

Instead, the distinct method C<truncate> is provided to delete all
records in a table with specific intent.

Returns true, or throws an exception on error.

=head2 my $module = Module->create(%params);

The C<create> constructor is a one-step combination of C<new> and
C<insert> that takes the column parameters, creates a new
L<ORDB::CPAN::Mandriva::Module> object, inserts the appropriate row into
the C<module> table, and then returns the object.

Returns a new L<Module> object, or throws an exception on error,
typically from the L<DBI> layer.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

