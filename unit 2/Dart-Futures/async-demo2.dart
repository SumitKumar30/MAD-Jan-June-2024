void main() {
  print("A");
  Future(() {
    print("B");
    Future(() => print("C"));
    Future(() => print("D"));
    Future(() => print("E"));
    print("F");
  });
  print("G");
}