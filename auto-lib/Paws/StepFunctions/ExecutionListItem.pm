package Paws::StepFunctions::ExecutionListItem;
  use Moose;
  has ExecutionArn => (is => 'ro', isa => 'Str', xmlname => 'executionArn', request_name => 'executionArn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StartDate => (is => 'ro', isa => 'Str', xmlname => 'startDate', request_name => 'startDate', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', xmlname => 'stateMachineArn', request_name => 'stateMachineArn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StopDate => (is => 'ro', isa => 'Str', xmlname => 'stopDate', request_name => 'stopDate', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ExecutionListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ExecutionListItem object:

  $service_obj->Method(Att1 => { ExecutionArn => $value, ..., StopDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ExecutionListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionArn => Str

  The Amazon Resource Name (ARN) that identifies the execution.


=head2 B<REQUIRED> Name => Str

  The name of the execution.


=head2 B<REQUIRED> StartDate => Str

  The date the execution started.


=head2 B<REQUIRED> StateMachineArn => Str

  The Amazon Resource Name (ARN) of the executed state machine.


=head2 B<REQUIRED> Status => Str

  The current status of the execution.


=head2 StopDate => Str

  If the execution already ended, the date the execution stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
