
package Paws::CloudFront::GetDistributionConfig2014_10_21 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDistributionConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetDistributionConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetDistributionConfigResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetDistributionConfigResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The distribution's id.











=cut
