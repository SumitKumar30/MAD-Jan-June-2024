// positional parameters
void main(List<String> args) {
  // print(sayGoodbyeTo('John', 'Delhi', 40));
  sayGoodbyeTo('Delhi', 40, 'John');
  sayGoodbyeTo('Gurgaon', 35);
  sayGoodbyeTo('Gurgaon', 35, 'Paul');
  sayGoodbyeTo('Gurgaon', 35, 68.58, 'Bar');
}

dynamic sayGoodbyeTo(String city, int age,
    [String name = 'Foo', double? salary]) {
  print('Goodbye!, $name, who resides in $city!');
}

// String? sayGoodbyeTo() {
//   return null;
// }
