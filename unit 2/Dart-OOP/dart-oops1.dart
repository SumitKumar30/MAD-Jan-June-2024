// ignore_for_file: public_member_api_docs, sort_constructors_first
// Simple class demo
void main(List<String> args) {
  final person1 = Person(name: 'John', age: 20);
  print(person1.name);
  print(person1.age);
  print(person1.toString());
}

class Person{
  String? name;
  int? age;
  // Person({required name, required age}) {
  //   this.age = age;
  //   this.name = name;
  // }

  // Person({required name, required age})
  //     : this.name = name,
  //       this.age = age;

  Person({required this.name, this.age});
  // constructor with named parameteres
  // Person({required String name, required int age})
  //     : this.name = name,
  //       this.age = age;

  @override
  String toString() => 'Person(name: $name, age: $age)';
}
