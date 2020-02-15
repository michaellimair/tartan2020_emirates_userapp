import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Text('How can we help you today?'),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: (){},
              child: Text('Reschedule flights'),
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: (){},
              child: Text('Departure Information'),
            )
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: (){},
              child: Text('Arrival Information'),
            )
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              onPressed: (){},
              child: Text('Departure Information'),
            )
          ),
        ],
      )
    );
  }
}