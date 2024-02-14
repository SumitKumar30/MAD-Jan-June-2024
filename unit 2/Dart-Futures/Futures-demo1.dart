void main(List<String> args) async {
  final name1 =
      getName(); // execution will halt till this function call is resolved
  final name2 = getName();
  print(name1);
  print(name2);
  print(
      await getUserName()); // waits for the result to come back --> consuming future
  print(getThisName());

  print(await getAddress());

  print(await getPhoneNumber());
}

String getName() => 'Foo Bar';

// If you want to return a value in Future.. just use Async
// If you get an instance of a Future --> It's not consumed yet!
Future<String> getUserName() async => 'John Wick';

// If you want to consume a Future --> use "await" keyword
Future<String> getThisName() {
  return Future.value('John Doe');
  //  return "John Doe";
}

Future<String> getAddress() => Future.value('123 Main St Delhi');

// returning a future value with some delay
// async keyword doesn't really contribute with anything here
Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 1), () => '999-9899-999');
