import 'package:flutter/material.dart';

class UserHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          if (index == 0) return Container();
          return Divider(height: 2, color: Colors.black,);
        },
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Text('Your History with Emirates', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),);
          }
          return ListTile(
            title: Text(index % 2 == 0 ? 'DXB - JFK': 'JFK - DXB'),
            leading: Icon(Icons.flight_takeoff),
            subtitle: Text(DateTime.fromMillisecondsSinceEpoch(1581796291000 - index * 2000000000).toString()),
          );
        },
        itemCount: 30,
      )
    );
  }
}