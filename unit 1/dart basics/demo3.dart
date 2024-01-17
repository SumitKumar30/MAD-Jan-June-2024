import 'dart:io';

void main(List<String> args) {
  print('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Entered name is: $name');

  print('Enter your age:');
  var age = int.parse(stdin.readLineSync().toString());
  print('Entered age is: $age');

  stdout.write('$age');
}
