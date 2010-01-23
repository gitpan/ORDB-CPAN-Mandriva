
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'an ORM for CPAN packages available in Mandriva',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'dist_name' => 'ORDB-CPAN-Mandriva',
                       'script_files' => [],
                       'module_name' => 'ORDB::CPAN::Mandriva',
                       'requires' => {
                                       'perl' => '5.008005',
                                       'Test::More' => 0,
                                       'English' => 0,
                                       'File::Find' => 0,
                                       'File::Temp' => 0,
                                       'ORLite::Mirror' => '1.12'
                                     },
                       'license' => 'perl'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
