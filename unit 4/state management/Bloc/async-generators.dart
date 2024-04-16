// async* generators
void main(List<String> args) {
  asyncGenerator().listen((event) {
    print(event);
  });
}

Stream<int> asyncGenerator() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;    // --> deliver the value
  }
}
