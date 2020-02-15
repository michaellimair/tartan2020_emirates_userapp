import 'package:emirates_experience_userapp/components/rootNavigator.dart';
import 'package:emirates_experience_userapp/models/pushNotification.dart';
import 'package:emirates_experience_userapp/screens/agents/agents.dart';
import 'package:emirates_experience_userapp/screens/map/map.dart';
import 'package:emirates_experience_userapp/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.x
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    PushNotification.init(); // Initialize push notification configurations
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emirates Experience',
      theme: emiratesExperienceTheme(context),
      routes: {
        '/': (context) => RootNavigator(),
        '/Agents': (context) => AgentsPage(),
        '/Map': (context) => MapPage()
      },
    );
  }
}
