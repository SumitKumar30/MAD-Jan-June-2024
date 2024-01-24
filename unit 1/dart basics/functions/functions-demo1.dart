void main() {
  print(printHello());

  print(printSum(10, 20));

  print(getSum(20, 30));
}

dynamic printHello() {
  print('Hello!');
  return 'John doe';
}

int printSum(int x, int y) {
  int z = x + y;
  return z;
}

int getSum(int x, int y) => (x + y);
