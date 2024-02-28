import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('First App'),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Flutter NCU!',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.network(
                        'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg'),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Enter your name'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration:
                          InputDecoration(labelText: 'Enter your password'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: () => {}, child: Text('Submit'))
                  ],
                ),
              ),
            )));
  }
}
