import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile({String title, IconData iconData, Function tapHandler}) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 120,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context)
              .accentColor, // this property can only be used if BoxDecortion is not used else flutter throws an error
          child: Text(
            'Cooking Up !',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile(
          title: 'Meals',
          iconData: Icons.restaurant,
          tapHandler: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        buildListTile(
          title: 'Filters',
          iconData: Icons.settings,
          tapHandler: () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          },
        ),
      ],
    ));
  }
}
