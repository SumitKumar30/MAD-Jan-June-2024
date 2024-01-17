void main(List<String> args) {
  // String vs StringBuffer
  List<String> cities = ['Delhi', 'Gurgaon', 'Bangalore', 'Chennai'];

  // Strings are immutable
  String finalCities = '';
  for (String city in cities) {
    finalCities += city + ' ';
    print(identityHashCode(finalCities)); // new hashcode gets created in every iteration
  }
  print('List of cities: $finalCities');

  // Stringbuffer is mutable
  StringBuffer buffer = StringBuffer();

  for (String city in cities) {
    buffer.write(city + " ");
    print(identityHashCode(buffer));  // same hashcode will be printed
  }
}
