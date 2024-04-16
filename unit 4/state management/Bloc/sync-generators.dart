void main(List<String> args) {
  sum(1, 2);
  print('sum(1, 2) --> ${sum(1, 2)}');

// final a = showNormal(10);



  final x = showGenerator(10); // nothing happens --> only generate values when you want to access an element

  // print('x.last --> ${x.last}');
  print('x.first --> ${x.first}');

  // // Iterables are used everywhere
  final list = [1, 2, 3, 4, 5];
  final evenList = list.where((element) => element.isEven);
  print(evenList.first);
}

int sum(int a, int b) => a + b;

// what if we want to generate multiple values? we don't want a single collection of values in one go.

List<int> showNormal(int n) {
  print('Normal started!');
  final list = <int>[];
  for (var i = 0; i < n; i++) {
    print('i --> $i');
    list.add(i);
  }
  print('Normal ended!');
  return list;
}

// use Iterable to generate them 1-by-1 synchronously

// 1. Iterables are lazy-loaded
// 2. Iterables generate just the right amount of items they needed

Iterable<int> showGenerator(int n) sync* {
  print('Generator started!');
  for (var i = 0; i < n; i++) {
    // return i; --? not allowed
    print('i --> $i');
    yield i; // gives the value one at a time syncronously
  }
  print('Generator ended!');
}
