
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Games Screen',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            )),
      ),
    );
  }
}
