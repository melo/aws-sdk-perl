
package Paws::Greengrass::ListCoreDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCoreDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/cores');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListCoreDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListCoreDefinitions - Arguments for method ListCoreDefinitions on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCoreDefinitions on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method ListCoreDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCoreDefinitions.

As an example:

  $service_obj->ListCoreDefinitions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Str

Specifies the maximum number of list results to be returned in this
page



=head2 NextToken => Str

Specifies the pagination token used when iterating through a paginated
request




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCoreDefinitions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

