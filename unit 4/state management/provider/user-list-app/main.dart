import 'package:flutter/material.dart';
import 'package:third_app/controller/user_notifier.dart';
import 'package:third_app/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => UserNotifier()),
      
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.indigo),
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
    );
  }
}
