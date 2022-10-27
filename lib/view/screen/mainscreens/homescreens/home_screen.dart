

import 'package:disan/bloc/disan_state.dart';
import 'package:disan/view/screen/mainscreens/homescreens/time_lines.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/disan_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return BlocConsumer<DisanCubit, DisanState>(
  listener: (context, state) {
  },
  builder: (context, state) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 200,
          leading: Row(
            children:  [
              const Icon(Icons.language,color: Colors.black,size: 25),
              const SizedBox(width: 10),
              IconButton(icon:  AnimatedIcon(icon:AnimatedIcons.pause_play,color: Colors.black,size: 25, progress: context.read<DisanCubit>().controller, ),onPressed: () async {
                if(context.read<DisanCubit>().isPlaying){
                  context.read<DisanCubit>(). controller.forward();
                  context.read<DisanCubit>(). isPlaying=false;
                  context.read<DisanCubit>().player1.stop();
                }else{
                  context.read<DisanCubit>(). controller.reverse();
                  context.read<DisanCubit>().  isPlaying=true;
                  context.read<DisanCubit>(). player1.play();
                }

              }),
            ],
          ),
          title: const Text('Dinsi',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search,color: Colors.black,size: 25),
            ),
          ],
          bottom:  TabBar(
            physics: const BouncingScrollPhysics(),
            onTap: (value) {
            },
            indicatorColor: Colors.blue[900],
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Text(
                "shop",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "time line",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body:  const Center(
          child: TabBarView(
            children: [
              Text('shop'),
              TimeLine()
            ],
          ),
        ),
      ),
    );
  },
);
  }
}
