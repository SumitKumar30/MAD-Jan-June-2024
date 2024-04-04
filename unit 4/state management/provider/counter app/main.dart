import 'package:flutter/material.dart';
import 'package:provider_demo2/counter.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/model/counter-provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return ChangeNotifierProvider(
      create:(context) => CounterProvider(),
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
