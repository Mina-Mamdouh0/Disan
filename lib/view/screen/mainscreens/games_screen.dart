
import 'package:disan/const.dart';
import 'package:disan/view/widget/card_games.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GamesScreen extends StatelessWidget {
   GamesScreen({Key? key}) : super(key: key);

  List<GamesModel> gamesList=[
    GamesModel('Tetris', 'assets/image/background.jpg', Container()),
    GamesModel('Ping Pong','assets/image/background.jpg', Container()),
    GamesModel('2048 Game', 'assets/image/background.jpg', Container()),
    GamesModel('X O', 'assets/image/background.jpg', Container()),
    GamesModel('Snake', 'assets/image/background.jpg', Container()),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/background.jpg',)
                )
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: GridView.builder(
                    controller:scrollController ,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 120
                      ),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            navigatorPush(context: context,widget: gamesList[index].game);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Expanded(child:
                                Icon(FontAwesomeIcons.planeUp,
                                  size: 50,
                                  color: Constant.primaryColor,)),
                                const SizedBox(height: 10,),
                                Text(
                                  gamesList[index].name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Constant.primaryColor
                                  ),
                                ),
                                const SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        );
                      }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class GamesModel{
  final String name;
  final String image;
  final Widget game;
  GamesModel(this.name, this.image, this.game);
}

