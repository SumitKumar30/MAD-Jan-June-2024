// Functions as first class citizens
void main(List<String> args) {
  print(minus());
  print(minus(20, 10));

  print(performOperation(10, 30, (a, b) => a + b));
  print(performOperation(10, 30, (a, b) => a - b));

  print(performOperation(10, 30, add));
  print(performOperation(10, 30, minus));

  loop(10, square);

  loop(10, evenOrOdd);

  loop(10, cube);
}

// int minus([int lhs = 10, int rhs = 5]) {
//   return lhs - rhs;
// }

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;

int performOperation(int a, int b, Function(int, int) operation) =>
    operation(a, b);

void loop(int n, Function fn) {
  for (int i = 1; i <= n; i++) {
    print(fn(i));
  }
}

int square(int num) {
  return num * num;
}

int cube(int num) {
  return num * num * num;
}

String evenOrOdd(int num) {
  return num % 2 == 0 ? "Even $num" : "Odd $num";
}
