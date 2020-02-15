import 'package:emirates_experience_userapp/components/drawer/drawerUserDisplay.dart';
import 'package:flutter/material.dart';

class EmiratesDrawer extends StatelessWidget {
  final Function onTap;

  const EmiratesDrawer({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerUserDisplay(),
          ListTile(
            title: Text('Lounge Experience'),
            leading: Icon(Icons.airline_seat_legroom_extra),
            onTap: () {
              Navigator.pop(context);
              onTap(0);
            },
          ),
          ListTile(
            title: Text('Flight Information'),
            leading: Icon(Icons.airplanemode_active),
            onTap: () {
              Navigator.pop(context);
              onTap(1);
            },
          ),
          ListTile(
            title: Text('FAQ'),
            leading: Icon(Icons.question_answer),
            onTap: () {
              Navigator.pop(context);
              onTap(2);
            },
          ),
        ],
      )
    );
  }
}