import 'dart:io';

void main() {
  print('Hello World!');

  // variable declaration

  int x = 100;

  print(x);

  print('Value of x is: $x'); // interpolation

  int y = 200;

  print('sum of x + y is: ${x + y}');

  int? value; // null-safety feature
  print(value);

  String name = 'Amit Kumar';

  // multi-line string
  String address = '''
            Nothcap university, sector 23A,
            near rotary public school,
            Gurugram, Pin: 122017
  ''';

  print(y.runtimeType.runtimeType);

  var z = 100.34; // type inferencing

  // z = 'amit';
  print(z.runtimeType);

  dynamic c;

  c = 'John Doe'; // type inferencing

  print(c.runtimeType);

  c = 100; // type can be re-assigned

  c = true;

  print(c.runtimeType);

  // name.substring(start)
  print('Enter your name: ');
  String? val = stdin.readLineSync();

  print('Name = $val');

  print('Enter your roll no: ');

  String? val2 = stdin.readLineSync();

  int roll = int.parse(val2.toString());

  print('Roll No = $roll');
}
