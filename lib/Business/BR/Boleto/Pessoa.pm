package Business::BR::Boleto::Pessoa;
$Business::BR::Boleto::Pessoa::VERSION = '0.000001';
use Moo;
use Carp;

has 'nome' => (
    is       => 'ro',
    required => 1,
);

has 'endereco' => (
    is       => 'ro',
    required => 1,
);

has 'documento' => (
    is       => 'ro',
    required => 1,
);

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Business::BR::Boleto::Pessoa

=head1 VERSION

version 0.000001

=head1 AUTHOR

Blabos de Blebe <blabos@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Blabos de Blebe.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
