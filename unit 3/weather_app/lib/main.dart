import 'dart:ui';

import 'package:first_app/info_screen.dart';
import 'package:first_app/movie_reviews.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: Center(child: SafeArea(child: Text("Hello Flutter!!")))
    // );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        // home: InfoScreen(),
        routes: {
          '/': (context)=> InfoScreen(),
          '/movieReview': (context) => MovieReview() 
        },
        initialRoute: '/',
      );
  }
}
