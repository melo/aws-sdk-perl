
package Paws::Lightsail::CreateDomainResult;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['NameInRequest'], request_name => 'operation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDomainResult

=head1 ATTRIBUTES


=head2 Operation => L<Paws::Lightsail::Operation>

An array of key-value pairs containing information about the domain
resource you created.


=head2 _request_id => Str


=cut

1;