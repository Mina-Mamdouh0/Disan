import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const MyContainer({super.key,required  this.child, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),

      ),
      child:child,
    );
  }
}
