import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {


  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<ChatMessage> chatMessages = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DashChat(
        user: ChatUser(
          name: "Jhon Doe",
          uid: "xxxxxxxxx",
          // avatar: "https://www.wrappixel.com/ampleadmin/assets/images/users/4.jpg",
        ),
        // height: 300,
        // width: 300,
        messages: chatMessages,
        onSend: (ChatMessage newMessage) {
          setState(() {
            chatMessages.add(newMessage);
          });
          Future.delayed(Duration(seconds: 1), () {
            setState(() {
              chatMessages.add(ChatMessage(text: "Hi Michael! How can I help you?", user: ChatUser(
                name: "Aditya Chanana",
                uid: "xxxxxxxx0",
                // avatar: "https://www.wrappixel.com/ampleadmin/assets/images/users/4.jpg",
              )));
            });
          });
        },
      )

    );
  }
}