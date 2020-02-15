import 'package:flutter/material.dart';

class DrawerUserDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(
              Icons.verified_user,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            onPressed: null,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Michael Lim',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'michael@tartanhacks.com',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 8)
            ]
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}