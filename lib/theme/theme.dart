import 'package:flutter/material.dart';

ThemeData emiratesExperienceTheme(BuildContext context) {
  return ThemeData(
    primaryColor: EMIRATES_RED,
    buttonTheme: ButtonThemeData(
      buttonColor: EMIRATES_RED,
      textTheme: ButtonTextTheme.primary,
      height: 60,
    ),
    tabBarTheme: TabBarTheme(
    indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: EMIRATES_RED)
      )
    ),
    // scaffoldBackgroundColor: Colors.grey[300]
  );
}

const Color EMIRATES_RED = Color(0xffD81921);
const TextStyle HEADING_THEME = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18
);