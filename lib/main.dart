import 'package:emirates_experience_userapp/components/rootNavigator.dart';
import 'package:emirates_experience_userapp/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emirates Experience',
      theme: emiratesExperienceTheme(context),
      routes: {
        '/': (context) => RootNavigator(),
      },
    );
  }
}
