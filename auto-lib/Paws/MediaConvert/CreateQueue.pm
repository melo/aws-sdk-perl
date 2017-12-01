
package Paws::MediaConvert::CreateQueue;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/queues');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::CreateQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateQueue - Arguments for method CreateQueue on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the 
AWS Elemental MediaConvert service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

As an example:

  $service_obj->CreateQueue(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

Optional. A description of the queue you are creating.



=head2 Name => Str

The name of the queue you are creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
