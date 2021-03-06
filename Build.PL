use strict;
use Module::Build;

my $build = Module::Build->new(
    module_name        => 'Perl6::Modules::Org',
    dist_abstract      => 'Perl 6 Ecosystem',
    dist_name          => 'perl6.modules.org',
    dist_author        => 'Perl 6 Hackers',
    license            => 'perl',
    create_makefile_pl => 'passthrough',
    dist_version => '0.1',
    recursive_test_files => 1,
    requires => {
      'Carp'                             => '0',
      'DBIx::Class::Candy'               => '0.005000',
      'DBIx::Class::Schema'              => '0',
      'Data::GUID'                       => '0.048',
      'Data::UUID'                       => '1.221',
      'Exporter::Easy'                   => '0.18',
      'Fcntl'                            => '0',
      'File::Glob'                       => '0',
      'File::Path'                       => '0',
      'File::Spec'                       => '0',
      'File::Spec::Functions'            => '0',
      'File::Temp'                       => '0',
      'FindBin'                          => '0',
      'Getopt::Long'                     => '2.48',
      'IO::Handle'                       => '0',
      'IPC::Open3'                       => '0',
      'Imager::File::PNG'                => '0.92',
      'Import::Into'                     => '0',
      'JSON::Meth'                       => '1.001006',
      'LWP::UserAgent'                   => '0',
      'Mew'                              => '1.001006',
      'Mojo::Base'                       => '0',
      'Mojo::Collection'                 => '0',
      'Mojo::Log'                        => '0',
      'Mojo::URL'                        => '0',
      'Mojo::UserAgent'                  => '0',
      'Mojo::Util'                       => '0',
      'Mojolicious'                      => '7.0',
      'Mojolicious::Commands'            => '0',
      'Mojolicious::Plugin::AssetPack'   => '1.18',
      'POSIX'                            => '0',
      'Pithub'                           => '0.01030',
      'Pod::Usage'                       => '1.67',
      'SQL::Translator'                  => '0.11021',
      'Test::Mojo::Role::Debug'          => '1.003004',
      'Test::Mojo::Role::ElementCounter' => '1.001006',
      'Test::Mojo::Role::SubmitForm'     => '1.001007',
      'Test::Mojo::WithRoles'            => '0.02',
      'Test::More'                       => '0',
      'Test::Most'                       => '0.34',
      'Test::Output'                     => '1.03',
      'Test::Script'                     => '1.10',
      'Time::Moment'                     => '0.38',
      'Toadfarm'                         => '0.72',
      'base'                             => '0',
      'blib'                             => '1.01',
      'constant'                         => '0',
      'experimental'                     => '0',
      'strict'                           => '0',
      'strictures'                       => '2.000002',
      'warnings'                         => '0',

      ## deps used by some modules but they only optionally install them
      'Module::Runtime' => '0.014', # Module::Pluggable
      'Module::Require' => '0.05',  # Module::Pluggable
      'IO::Socket::IP'  => '0.37',  # required to fix an issue with SSL in Mojo
      'IO::Socket::SSL' => '2.020', # Mojo::UserAgent
    }
);
$build->create_build_script;
