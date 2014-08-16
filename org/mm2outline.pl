#!/usr/bin/perl -w
use strict;

use Getopt::Std;
use XML::Simple;
use Data::Dumper qw(Dumper);

# Copyright (c) 2004 Christian Lemburg.
#
# All rights reserved. This program is free software;
# you can redistribute it and/or modify it under the
# same terms as Perl itself.

# usage

my $usage = <<'EOU';

Usage: $0 < freemind.mm > emacs-outline.txt

Options:

    h: print help
    p: outline mode heading indicator pattern atom (default "*")
    s: suppress topic of mind map as title in outline output (default off)

EOU


# setup

my %opts;
getopts('hsp:', \%opts);

die $usage if $opts{h};

my $heading_pattern_atom = $opts{p} || "*";
my $suppress_title = $opts{'s'};

my $QUOTE = "&quot;";
my $LESS_THAN = "&lt;";
my $GREATER_THAN = "&gt;";
my $NEWLINE = "&#xa;";

# action

my $xs = new XML::Simple();
my $ref = $xs->XMLin(\*STDIN);

die "Could not find mind map in input" unless exists $ref->{node};

my $start = $ref->{node};
print unquote($start->{TEXT}), "\n\n" unless $suppress_title;

my $level = 0;
process_children($start);


# subs

sub process_node {
    my ($node) = @_;
    process_node_text($node, $level);
    if (not is_leaf($node)) {
        process_children($node);
    }
}

sub process_children {
    my ($node) = @_;
    $level++;
    if (ref($node->{node}) eq "ARRAY") {
        for my $child (@{$node->{node}}) {
            process_node($child);
        }
    } else {
        my $child = $node->{node};
        process_node($child);
    }
    $level--;
}

sub process_node_text {
    my ($node, $level) = @_;
    if (is_paragraph_leaf($node)) {
        print unquote($node->{TEXT}), "\n\n";
    } else {
        print make_heading($level), " ", unquote($node->{TEXT}), "\n\n";
    }
}

sub is_leaf {
    my ($node) = @_;
    return not exists $node->{node};
}

sub is_paragraph_leaf {
    my ($node) = @_;
    # define: paragraph leaf = leaf with text that contains newlines
    return is_leaf($node) && $node->{TEXT} =~ /$NEWLINE/;
}

sub make_heading {
    my ($level) = @_;
    return $heading_pattern_atom x $level;
}

sub unquote {
    my ($s) = @_;
    $s =~ s/$QUOTE/"/g;
    $s =~ s/$LESS_THAN/</g;
    $s =~ s/$GREATER_THAN/>/g;
    $s =~ s/$NEWLINE/\n/g;
    return $s;
}
