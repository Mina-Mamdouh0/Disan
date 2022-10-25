
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/mainscreens/chat_screens.dart';
import 'package:disan/view/screen/mainscreens/games_screen.dart';
import 'package:disan/view/screen/mainscreens/homescreens/shop_screen.dart';
import 'package:disan/view/screen/mainscreens/notifications_screen.dart';
import 'package:disan/view/screen/mainscreens/real_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key,}) : super(key: key);
  
  final textBottomNavList = ['Home','Chat','Notification', 'Games',];
  final autoSizeGroup = AutoSizeGroup();
  final List<IconData> iconList = [
    Icons.home,
    Icons.chat_rounded,
    Icons.notifications,
    Icons.videogame_asset_sharp,
  ];
  final List<Widget> screenList=const [
    HomeScreen(),
    ChatScreen(),
    NotificationsScreen(),
    GamesScreen(),
  ];
  final List<Color> colorsList=[
    Constant.primaryColor,
    Colors.deepOrange,
    Colors.purpleAccent,
    Colors.teal
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DisanCubit,DisanState>(
      builder: (context, state){
        var cubit=DisanCubit.get(context);
        return Scaffold(
            body: screenList[cubit.currentIndexNav],
            floatingActionButton: FloatingActionButton(
              elevation: 8,
              child: const CircleAvatar(
                radius: 200,
                backgroundColor: Colors.indigoAccent,
                child: Center(child: Icon(FontAwesomeIcons.video,color: Colors.white,)),
              ),
              onPressed: () {
                navigatorPush(context: context,widget: const RealScreen());
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

            bottomNavigationBar: AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Icon(
                        iconList[index],
                        size: 24,
                        color: cubit.currentIndexNav==index? colorsList[cubit.currentIndexNav]:Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: cubit.currentIndexNav==index?AutoSizeText(
                        cubit.currentIndexNav==index? " ${textBottomNavList[index]}":"",
                        maxLines: 1,
                        style:  TextStyle(color:colorsList[cubit.currentIndexNav]),
                        group: autoSizeGroup,
                      ):Container(),
                    )
                  ],
                );
              },
              backgroundColor: Colors.white,
              activeIndex: cubit.currentIndexNav,
              splashColor: Colors.blueAccent[700],
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.center,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              onTap: (index) => cubit.changeIndexNav(index),
            ));
      },
      listener: (context, state){}
      );
  }
}


