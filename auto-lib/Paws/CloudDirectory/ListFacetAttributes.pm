
package Paws::CloudDirectory::ListFacetAttributes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFacetAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/facet/attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListFacetAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListFacetAttributes - Arguments for method ListFacetAttributes on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFacetAttributes on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method ListFacetAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFacetAttributes.

As an example:

  $service_obj->ListFacetAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 B<REQUIRED> Name => Str

The name of the facet whose attributes will be retrieved.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> SchemaArn => Str

The ARN of the schema where the facet resides.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFacetAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

