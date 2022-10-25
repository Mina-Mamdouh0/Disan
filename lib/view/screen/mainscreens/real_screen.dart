
import 'package:flutter/material.dart';

class RealScreen extends StatelessWidget {
  const RealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Real Screens',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        )),
      ),
    );
  }
}
