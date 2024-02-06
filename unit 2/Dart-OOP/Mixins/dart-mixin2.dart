// Mixins and Function Parameters
void main(List<String> args) {
  final johnDoe = Person(firstName: 'John', lastName: 'Doe');
  
  // Accepting a mixin as a data-type into a function call 
  print(johnDoe.fullName);
}

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.firstName, required this.lastName});
}

// Mixin as function parameter
String getFullName(HasFullName obj) => obj.fullName;
