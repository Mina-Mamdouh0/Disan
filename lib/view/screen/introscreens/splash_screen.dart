


import 'dart:async';

import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/login_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
import 'package:disan/view/screen/mainscreens/homescreens/home_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding_screens.dart';

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
    Timer(
        const Duration(seconds: 2),
            () async{
          SharedPreferences preferences=await SharedPreferences.getInstance();
          preferences.getBool('isShow')??false ?
          navigatorAndRemove(context: context, widget:LoginScreen()):navigatorAndRemove(context: context, widget:OnBoardingPage());
        }
    );
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
                    image: AssetImage(Constant.kLogo))),
          ),
        )
    );
  }
}
