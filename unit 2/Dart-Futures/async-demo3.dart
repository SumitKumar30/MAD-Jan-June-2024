void main() {
  print('Program started!!');
  sum(10, 20);
  giveSumInFuture(15, 25);
  print('Caculations completed!!!');
}

void sum(int a, int b) => print('${a + b}');

Future<void> giveSumInFuture(int a, int b) {
  // final val = Future.delayed(Duration(seconds: 5), () => print('${a + b}'));
  // return val;
  return Future(()=>print('${a+b}'));
}