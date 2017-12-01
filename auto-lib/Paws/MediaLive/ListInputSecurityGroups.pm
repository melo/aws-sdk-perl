
package Paws::MediaLive::ListInputSecurityGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInputSecurityGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputSecurityGroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::ListInputSecurityGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputSecurityGroups - Arguments for method ListInputSecurityGroups on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInputSecurityGroups on the 
AWS Elemental MediaLive service. Use the attributes of this class
as arguments to method ListInputSecurityGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInputSecurityGroups.

As an example:

  $service_obj->ListInputSecurityGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInputSecurityGroups in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
