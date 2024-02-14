import 'dart:math';

void main() {
  print('#1 - sqrt(4) -> ${sqrt(4)}');
  print('#2 - multiply(15,10) -> ${15 * 10}');
  print('#3 - sum(20,5) -> ${20 + 5}');
  Future.delayed(const Duration(seconds: 5),
      () => print('#4 - divide(63,9) -> ${63 / 9}'));
  print('#5 - subtract(20,5) -> ${20-5}');
}