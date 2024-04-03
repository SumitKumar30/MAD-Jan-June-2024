import 'package:first_app/info_screen.dart';
import 'package:first_app/movie_reviews.dart';
import 'package:first_app/weather_screen.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext ctx) {
    final List<String> menuTitles = [
      'Home',
      'Movie Review',
      'Weather',
      'About Us'
    ];

    List<Widget> menuItems = [];

    menuItems.add(
      const DrawerHeader(
        decoration: BoxDecoration(color: Colors.amberAccent),
        child: Center(
          child: Text(
            'IMDB Pro',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );

    menuTitles.forEach((element) {
      Widget screen = Container(); // it holds an empty container
      menuItems.add(ListTile(
        title: Text(
          element,
          style: const TextStyle(fontSize: 22),
        ),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = InfoScreen();
              break;
            case 'Movie Review':
              screen = MovieReview();
              break;

            case 'Weather':
              screen = WeatherScreen();
          }
          //Navigator.of(ctx).pop();
          Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => screen));
        },
      ));
    });

    return menuItems;
  }
}
