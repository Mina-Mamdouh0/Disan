
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/mainscreens/chat_screens.dart';
import 'package:disan/view/screen/mainscreens/games_screen.dart';
import 'package:disan/view/screen/mainscreens/notifications_screen.dart';
import 'package:disan/view/screen/mainscreens/real_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';

import 'mainscreens/homescreens/home_screen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key,}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>with TickerProviderStateMixin {
  final textBottomNavList = ['Home','Chat','Notification', 'Games',];

  final autoSizeGroup = AutoSizeGroup();

  final List<IconData> iconList = [
    Icons.home,
    Icons.chat_rounded,
    Icons.notifications,
    Icons.videogame_asset_sharp,
  ];

  final List<Widget> screenList= [
    const HomeScreen(),
     ChatScreen(),
    NotificationsScreen(),
     GamesScreen(),
  ];

  final List<String> nameList= [
     'Home',
     'Chat',
     'Notifications',
     'Games',
  ];

  final List<Color> colorsList=[
    Constant.primaryColor,
    Colors.greenAccent,
    Colors.pink,
    Colors.deepOrange
  ];

  @override
  void initState() {
    playAudio();
  context.read<DisanCubit>().controller= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }
  void playAudio() async {
    context.read<DisanCubit>(). player1 = AudioPlayer(); await context.read<DisanCubit>().player1.setUrl("https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
    context.read<DisanCubit>().player1.play();
  }
  @override
  void dispose() {
    context.read<DisanCubit>(). controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DisanCubit,DisanState>(
      builder: (context, state){
        var cubit=DisanCubit.get(context);
        return Scaffold(
          //extendBodyBehindAppBar: true,
             extendBody: true,
             resizeToAvoidBottomInset: true,
            appBar:cubit.currentIndexNav==0?null: AppBar(
              backgroundColor: Colors.white,
              leadingWidth: 200,
              /*leading: Row(
                children:  [
                  const Icon(Icons.language,color: Colors.black,size: 25),
                  const SizedBox(width: 10),
                  IconButton(icon:  AnimatedIcon(icon:AnimatedIcons.pause_play,color: Colors.black,size: 25, progress: context.read<DisanCubit>().controller, ),onPressed: () async {
                    if(context.read<DisanCubit>().isPlaying){
                      context.read<DisanCubit>().controller.forward();
                      context.read<DisanCubit>().isPlaying=false;
                      context.read<DisanCubit>().player1.stop();
                    }else{
                      context.read<DisanCubit>(). controller.reverse();
                      context.read<DisanCubit>(). isPlaying=true;
                      context.read<DisanCubit>(). player1.play();
                    }

                  }),
                ],
              ),*/
              title:  Text(nameList[cubit.currentIndexNav],style: const TextStyle(color: Colors.black),),
              centerTitle: true,
              /*actions: [
                cubit.currentIndexNav==2?IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search,color: Colors.black,size: 25),
                ):Container(),
              ],*/

            ),
            body: screenList[cubit.currentIndexNav],
            floatingActionButton: FloatingActionButton(
              elevation: 8,
              child: const CircleAvatar(
                radius: 200,
                backgroundColor: Colors.indigoAccent,
                child: Center(child: Icon(FontAwesomeIcons.video,color: Colors.white,)),
              ),
              onPressed: () {
                navigatorPush(context: context,widget:  ReelView());
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
              splashSpeedInMilliseconds: 0,
              //notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.center,
              onTap: (index) => cubit.changeIndexNav(index),
            ));
      },
      listener: (context, state){}
      );
  }
}


