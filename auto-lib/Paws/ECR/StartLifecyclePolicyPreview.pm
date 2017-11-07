
package Paws::ECR::StartLifecyclePolicyPreview;
  use Moose;
  has LifecyclePolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartLifecyclePolicyPreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::StartLifecyclePolicyPreviewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartLifecyclePolicyPreview - Arguments for method StartLifecyclePolicyPreview on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartLifecyclePolicyPreview on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method StartLifecyclePolicyPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartLifecyclePolicyPreview.

As an example:

  $service_obj->StartLifecyclePolicyPreview(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 LifecyclePolicyText => Str

The policy to be evaluated against. If you do not specify a policy, the
current policy for the repository is used.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to be evaluated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartLifecyclePolicyPreview in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
