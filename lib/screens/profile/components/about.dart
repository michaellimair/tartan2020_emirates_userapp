import 'package:emirates_experience_userapp/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Text('Benefits', style: HEADING_THEME,),
          SizedBox(height: 8,),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.check_circle, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('10% Discount on all stores in Dubai International \nAirport', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.check_circle, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('Personalized Agent Experience', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.check_circle, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('Complimentary Airport Limousine', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.check_circle, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('Complimentary Global Lounge Access', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Text('Your Preferences', style: HEADING_THEME,),
          SizedBox(height: 8,),
          Container(
            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.globe, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('English', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          SizedBox(height: 16,),
          Text('Your Interests', style: HEADING_THEME,),
          SizedBox(height: 8,),
          Container(
            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.futbol, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('Soccer', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.headset, color: EMIRATES_RED,),
                SizedBox(width: 16,),
                Text('Pop and Rock Music', style: Theme.of(context).textTheme.subtitle,),
              ],
            ),
          ),
        ],
      )
    );
  }
}