#!/usr/bin/env perl
package Dotfiles;
use v5.24;
use strict;
use warnings;
use experimental qw(switch);
use Cwd;

sub main {
	my $argc = shift;
	my @argv = @_;
	return help() if $argc < 1;

	my $dotfiles = Dotfiles->new
	->files(qw{
		.zshrc
		.zsh/
		.docker/
	});

	given ($argv[0]) {
		when ("link")       { $dotfiles->link->run; }
		when ("dry_link")   { $dotfiles->link->dry_run; }
		when ("unlink")     { $dotfiles->unlink->run; }
		when ("dry_unlink") { $dotfiles->unlink->dry_run; }
		default             { help(); }
	}
}

sub new {
	my $class = shift;
	bless +{
		files => [],
		cmds  => [],
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

sub run {
	my $self = shift;
	foreach (@{$self->{cmds}}) {
		system($_) == 0
			or die "[failure] $_\n";
		print "+ $_\n";
	}

	my $n_linked = scalar(@{$self->{files}});
	print "$n_linked symlinks have been created.\n";
	exit 0;
}

sub dry_run {
	my $self = shift;
	foreach (@{$self->{cmds}}) {
		print "+ $_\n";
	}
	exit 0;
}

sub link {
	my $self = shift;
	foreach (@{$self->{files}}) {
		my $from = getcwd() . "/$_";
		my $to   = homedir() . "/$_";
		next if -e $to;
		push @{$self->{cmds}}, "ln -s $from $to";
	}
	$self;
}

sub unlink {
	my $self = shift;
	foreach (@{$self->{files}}) {
		my $from = homedir() . $_;
		next unless -e $from;
		next unless -l $from;
		push @{$self->{cmds}}, "unlink $from";
	}
	$self;
}

sub files {
	my $self  = shift;
	my @files = @_;
	push @{$self->{files}}, @files;
	$self;
}

####################

sub homedir {
	$ENV{"HOME"};
}

main(scalar(@ARGV), @ARGV);
1;
