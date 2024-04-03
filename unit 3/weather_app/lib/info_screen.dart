// ignore_for_file: unnecessary_const

import 'package:first_app/menu_drawer.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MenuDrawer(),
        bottomNavigationBar: const BottomNavigation(),
        appBar: AppBar(
          title: const Text('Flutter Home'),
          // backgroundColor: Colors.amber,
          actions: const [
            Icon(Icons.phone),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.message),
            SizedBox(
              width: 30,
            )
          ],
        ),
        //body: const Center(child:  Text("Hello World!", style: TextStyle(fontSize: 40)))
        //body: Image.network('https://i.pinimg.com/originals/40/f0/0b/40f00b9ed42dd0682a98843d2762d699.gif'),
        // body: Image.asset('images/batman.jpg'),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/batman.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20),
                  ),
                  color: Colors.white54),
              child: const Text(
                'Unmask the Truth',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text(
            '+',
            style: const TextStyle(fontSize: 30),
          ),
        ));
  }
}

