// Future Error Handling
void main(List<String> args) async {
  try {
    print(await getFullName(
        firstName: 'John',
        lastName:
            'Doe')); // await will stop the execution till this value is consumed
    print(await getFullName(firstName: '', lastName: 'Doe'));
  } on FirstOrLastNameMissingException catch (e) {
    print(e);
  }
}

Future<String> getFullName(
    {required String firstName, required String lastName}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  @override
  String toString() {
    return 'First or last name is missing!';
  }
}
