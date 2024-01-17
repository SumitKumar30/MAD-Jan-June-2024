void main() {
  print('Hello World!');

  // variable declaration
  int x = 100;
  print(x); // prints the value of x

  print('The value of x is: $x'); // interpolation

  int y = 50;

  print('The sum of x + y is:  ${x + y}'); // interpolation for expressions

  var z = 200; // type inferencing

  print('Type of z is: ${z.runtimeType}');

  // z = 'Amit Kumar'; --> not allowed

  dynamic w = 'Amit Kumar';

  print('Type of w is: ${w.runtimeType}');

  w = 100.05;

  print('Updated type of w is: ${w.runtimeType}');

  // int, double, bool, String, Null, List, Set, Map

  String name = "John Doe";

  const g = "adf";

  // multi-line string declaration
  String address = '''
      NCU, Sector 23A
      Near Rotary public School,
      Gurgaon, Pin 122017
  ''';
  print(address);

  int age = 28;
  String ageUpdate = age.toString();

  // String to int
  String val = '100';
  int val2 = int.parse(val);

  double f = 20.35;
  int h = f.toInt();

  num d = 100;
  num e = 100.45;
}
