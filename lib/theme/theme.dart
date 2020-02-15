import 'package:flutter/material.dart';

ThemeData emiratesExperienceTheme(BuildContext context) {
  return ThemeData(
    primaryColor: EMIRATES_RED,
    buttonTheme: ButtonThemeData(
      buttonColor: EMIRATES_RED
    )
  );
}

const Color EMIRATES_RED = Color(0xffD81921);