void main() {
  print("A");
  Future(() async {
    print("B");
    Future(() => print("C"));
    Future.microtask(() => print("D"));
    final val = await Future<String>.value('H');
    print(val);
    Future(() => print("E"));
    print("F");
    Future.value().then((value) => print('I'));
  });
  print("G");
}