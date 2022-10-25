
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Chat Screen',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            )),
      ),
    );
  }
}


