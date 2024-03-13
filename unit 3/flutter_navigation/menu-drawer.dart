import 'package:first_app/basic-navigation.dart';
import 'package:first_app/main.dart';
import 'package:first_app/register-screen.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //     decoration: BoxDecoration(color: Colors.indigoAccent),
          //     child: Text(
          //   "Title",
          //   style: TextStyle(fontSize: 30),
          // )),
          UserAccountsDrawerHeader(
            accountName: Text(
              'John Doe',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('johndoe@xyz.com'),
            currentAccountPicture: FlutterLogo(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Menu Item 1',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
             Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text(
              'Menu Item 2',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Menu Item 3',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FirstRoute()));
            },
          ),
        ],
      ),
    );
  }
}
