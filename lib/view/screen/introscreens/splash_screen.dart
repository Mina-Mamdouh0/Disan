


import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration initialDelay = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
   /* Timer(
        Duration(seconds: 2),
            () async{
          SharedPreferences preferences=await SharedPreferences.getInstance();
          preferences.getBool('isShow')??false ?
          Get.offAll(HomeLayout(
          )):Get.offAll(OnBoarding());
        }
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/logo.png'))),
          ),
        )
    );
  }
}
