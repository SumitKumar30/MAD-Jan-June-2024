// Rethrowing an exception
void main(List<String> args) {
  try {
    tryCreatingPerson(age: -150);
    tryCreatingPerson(age: 10);
    tryCreatingPerson(age: 150);
  } catch (e, st) {
    print(e);
    print(st);
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    // rethrowing exception to calling function
    rethrow;
  }
  print('-------------------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;
  InvalidAgeException(this.age, this.message);
  @override
  String toString() => 'InvalidAgeException(age: $age, message: $message)';
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0)
      throw InvalidAgeException(
          age, 'Age must be positive!!'); // throwing custom exception object
    else if (age > 140) {
      throw InvalidAgeException(
          age, 'Age must be less than 140'); // throwing custom exception object
    }
  }
}
