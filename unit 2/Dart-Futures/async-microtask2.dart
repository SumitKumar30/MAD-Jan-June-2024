void main(){
  print("A");
  Future(() {
    print("B");
    Future(() => print("C"));
    Future.microtask(() => print("D"));
    Future(() => print("E"));
    print("F");
  });
  print("G");
}