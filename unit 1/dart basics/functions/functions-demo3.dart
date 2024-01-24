// named parameters
void main(List<String> args) {
  // named parameters don't have to be specified at the call site
  sayHello();
  sayHello(name: 'John');

  describe();
  describe(something: null);
  describe(something: 'Hello, Dart!');

  doSomething();
  doSomething(msg: 'Keep Punching!');
  // doSomething(msg: null); 
  // --> null value not allowed, give a valid string or keep it default

  doSomethingWith(str: 'Bob');

  describePerson();
  describePerson(age: 50);
  describePerson(name: 'Paul');
  describePerson(name: 'Paul', age: 45);
}

void sayHello({String? name}) {
  print('Hello, $name');
}

// named parameter with default value
void describe({String? something = 'Hello, World!'}) {
  print(something);
}

// non-optional named parameters with default value
void doSomething({String msg = 'Change the World!'}) {
  print(msg);
}

// Required named parameter --> cannot have default value
void doSomethingWith({required String str}) {
  print('Hello, $str');
}

// ordering of Named parameters
void describePerson({String? name, int? age}) {
  print('Hello, $name, you are $age years old!');
}
