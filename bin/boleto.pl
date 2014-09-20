#!/usr/bin/env perl

use strict;
use warnings;

use PDF::API2;
use Const::Fast;

const my $mm => 25.4/72;
const my $in => 1/72;
const my $pt => 1;

my $pdf = PDF::API2->new;
my $page = $pdf->page;
$page->mediabox('A4');

my $png = $pdf->image_png('boleto.png');
my $image = $page->gfx;
$image->image($png, 0, 0, 210/$mm, 297/$mm);

$pdf->saveas('boleto.pdf');

# PODNAME: bobby_tables.pl

__END__

=pod

=encoding UTF-8

=head1 NAME

bobby_tables.pl

=head1 VERSION

version 0.000001

=head1 AUTHOR

Blabos de Blebe <blabos@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Blabos de Blebe.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
