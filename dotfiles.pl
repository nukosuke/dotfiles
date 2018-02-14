#!/usr/bin/env perl
package Dotfiles;
use v5.24;
use strict;
use warnings;
use experimental qw(switch);
use Cwd;

sub main {
	my $argc = shift;
	my @argv = shift;
	return help() if $argc < 1;

	my $dotfiles = Dotfiles->new
	->files(qw{
		test.sh	
	});

	given ($argv[0]) {
		when ("link")     { $dotfiles->link; }
		when ("dry_link") { $dotfiles->dry_link; }
		when ("unlink")   { $dotfiles->unlink; }
		default           { help(); }
	}
}

sub new {
	my $class = shift;
	bless +{
		files => [],
	}, $class;
}

sub help {
	my $help = <<"EOS"
Usage:
	% dotfiles.pl [subcommand]

Subcommands:
	link		-- create symlinks to HOME
	dry_link	-- output symlink command, but no execution
	unlink		-- remove all symlinks from HOME
EOS
	;
	print($help);
	exit 0;
}

sub link {
	my $self = shift;
	foreach (@{$self->{files}}) {
		my $cmd = link_cmd($_);
		system($cmd) != 0
			or die "[failure] $cmd\n";
		print "linked $_\n";
	}

	my $n_linked = scalar(@{$self->{files}});
	print "$n_linked files have been linked\n";
	exit 0;
}

sub dry_link {
	my $self = shift;
	foreach (@{$self->{files}}) {
		print "+ " . link_cmd($_) . "\n";
	}
	exit 0;
}

sub files {
	my $self  = shift;
	my @files = shift;
	push @{$self->{files}}, @files;
	$self;
}

####################

sub link_cmd {
	my $filename = shift;
	my $from     = getcwd() . "/$filename";
	my $to       = homedir() . "/$filename";
	"ln -s $from $to";
}

sub homedir {
	$ENV{"HOME"};
}

main(scalar(@ARGV), @ARGV);
1;
