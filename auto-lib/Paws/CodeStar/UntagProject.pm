
package Paws::CodeStar::UntagProject;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tags' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::UntagProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UntagProject - Arguments for method UntagProject on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagProject on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method UntagProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagProject.

As an example:

  $service_obj->UntagProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the project to remove tags from.



=head2 B<REQUIRED> Tags => ArrayRef[Str|Undef]

The tags to remove from the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

