// Future Chaining --> Feeding a value of future to another future
void main(List<String> args) async {
  // final length = await calculateLength(await getFullName());
  // print(length);

  // using "then for future chaining"
  final length = await getFullName().then((value) => calculateLength(value));
  print(length);
}

Future<int> calculateLength(String value) =>
    Future.delayed(const Duration(seconds: 1), () => value.length);

Future<String> getFullName() =>
    Future.delayed(const Duration(seconds: 1), () => 'John Doe');
