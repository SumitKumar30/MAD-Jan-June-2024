import 'package:first_app/bottom_navigation.dart';
import 'package:first_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class MovieReview extends StatelessWidget {
  const MovieReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moview Reviews'),
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const BottomNavigation(),
      body: const Center(child: SayMyName()),
    );
  }
}

class SayMyName extends StatefulWidget {
  const SayMyName({Key? key}) : super(key: key);

  @override
  State<SayMyName> createState() => _SayMyNameState();
}

class _SayMyNameState extends State<SayMyName> {
  String firstName = '';
  String lastName = '';
  TextEditingController textField1 = TextEditingController();
  TextEditingController textField2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textField1,
        ),
        TextField(
          controller: textField2,
        ),
        ElevatedButton(
            child: const Text('Say Name!'),
            onPressed: () {
              setState(() {
                firstName = textField1.text;
                lastName = textField2.text;
              });
            }),
        Text('Hello ' + firstName+" "+lastName),
      ],
    );
  }
}
