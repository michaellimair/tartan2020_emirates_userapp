import 'package:emirates_experience_userapp/models/agentModel.dart';
import 'package:emirates_experience_userapp/screens/agents/components/agentCard.dart';
import 'package:emirates_experience_userapp/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (!AgentModel.available) {
      return Center(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            Text('You have no assigned agents.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          ],
        )
      );
    }
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: AgentCard()
        ),
        SliverFillRemaining(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: <Widget>[
              Text('Interests', style: HEADING_THEME,),
              SizedBox(height: 8),
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
              SizedBox(height: 16),
              Text('Languages', style: HEADING_THEME,),
              SizedBox(height: 8),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check_circle, color: EMIRATES_RED,),
                    SizedBox(width: 16,),
                    Text('English', style: Theme.of(context).textTheme.subtitle,),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check_circle, color: EMIRATES_RED,),
                    SizedBox(width: 16,),
                    Text('Chinese', style: Theme.of(context).textTheme.subtitle,),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.check_circle, color: EMIRATES_RED,),
                    SizedBox(width: 16,),
                    Text('Bahasa Melayu', style: Theme.of(context).textTheme.subtitle,),
                  ],
                ),
              ),
            ],
          )
        ) 
      ]
    );
  }
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      height: 15,
      width: 15,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}