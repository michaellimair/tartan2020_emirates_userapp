import 'package:emirates_experience_userapp/components/drawer/drawer.dart';
import 'package:flutter/material.dart';
import './components/body.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(title: Text('Chat Support')),
    );
  }
}