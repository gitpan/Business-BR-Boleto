#!/usr/bin/env perl

use strict;
use warnings;
use 5.018;

use DDP;
use Business::BR::Boleto;
use Business::BR::Boleto::Renderer::PDF;

my $b = Business::BR::Boleto->new(
    banco   => q{Itau},
    cedente => {
        nome     => q{Binary Labs},
        endereco => q{João Firmino, 1551 ap 44. Assunção - São Bernardo/SP},
        documento => q{20.978.984/0001-97},
        agencia   => { numero => 5928 },
        conta     => { numero => q{01598}, dv => q{0} },
        carteira  => q{175}
    },
    sacado => {
        nome      => q{Blabos de Blebe},
        endereco  => q{Aqui},
        documento => q{09526584708}
    },
    pagamento => {
        valor_documento  => 1234.56,
        nosso_numero     => 777,
        numero_documento => 123,
        instrucoes       => qq{lala\n} x 5,
    },
);

p $b->codigo_barras;
p $b->linha_digitavel;
my $r =
  Business::BR::Boleto::Renderer::PDF->new( boleto => $b, base_dir => q{/tmp} );

$r->render;

say $b->pagamento->local_pagamento

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
