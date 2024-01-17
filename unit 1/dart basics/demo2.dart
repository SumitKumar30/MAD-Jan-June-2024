void main(List<String> args) {
  print(args);

  // const vs final keywords
  // const -- compile time constants
  const pi = 3.14; // fixed and cannot be changed

  // pi = 1.44;

  // const obj = new A();

  final obj2 = new A();

  // final --> runtime constants
  final a = getName();

  // a = 'John';

  // const b = getName();

  // a = 'John';

  // constant list
  const list = [1, 2, 3];

  // list.add(4);

  print(list);

  final list2 = const [4, 5, 6];

  list2.add(6);
  list2.add(7);
  list2.add(8);
  print(list2);

  list2.removeAt(1);
  print('Modified list2: $list2');
}

String getName() {
  return 'Amit';
}

class A {}
