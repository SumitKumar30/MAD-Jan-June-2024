void main(List<String> args) {
  tryCreatingPerson(age: -150);
  tryCreatingPerson(age: 10);
  tryCreatingPerson(age: 150);
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0)
      throw Exception('Age must be positive!!'); // throwing an exception object
    else if (age > 140) {
      throw 'Age must be less than 140'; // throwing a String object
    }
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    Person person = Person(age: age);
    print(person.age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('-------------------');
}
