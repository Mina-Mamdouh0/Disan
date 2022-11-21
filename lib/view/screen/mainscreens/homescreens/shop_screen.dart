
import 'package:disan/const.dart';
import 'package:disan/view/screen/category_screen.dart';
import 'package:disan/view/screen/favorite_screen.dart';
import 'package:disan/view/screen/mainscreens/homescreens/profile_shop_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../order_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.bottomCenter,
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

          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text('Trending Portfolio',
                    style: TextStyle(
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            navigatorPush(context: context,widget: ProfileShopScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(right: 5),
                            width: 125,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Expanded(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(10),
                                     child: Image.asset(Constant.kLogo,
                                     ),
                                   ),
                                 ),
                                 const SizedBox(height: 5,),
                                 const Text('Shop Name',
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                   color: Constant.primaryColor,
                                   fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                 ),),
                                 const SizedBox(height: 5,),
                                  Text('Category',
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                     color: Colors.grey.shade600,
                                     fontWeight: FontWeight.normal,
                                     fontSize: 18,
                                   ),),
                               ],
                            ),
                          ),
                        );
                      }),
                ),
                const Divider(color: Colors.grey,indent: 1),
                Container(
                   padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text('Category',
                    style: TextStyle(
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            navigatorPush(context: context,widget: CategoryScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(right: 5),
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(Constant.kLogo,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                const Text('Shop Name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Constant.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                const SizedBox(height: 5,),
                                Text('Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            navigatorPush(context: context,widget: CategoryScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(right: 5),
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(Constant.kLogo,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                const Text('Shop Name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Constant.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                const SizedBox(height: 5,),
                                Text('Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            navigatorPush(context: context,widget: CategoryScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(right: 5),
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(Constant.kLogo,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                const Text('Shop Name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Constant.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),),
                                const SizedBox(height: 5,),
                                Text('Category',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const Divider(color: Colors.grey,indent: 1),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Text('Best Selling',
                    style: TextStyle(
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(5),
                  child: ListView.builder(
                      itemCount: 10,
                      physics:const  BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(right: 5),
                          width: 125,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(Constant.kLogo,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Category',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),),
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 100,)
              ],
    ),
            ),
          ),

          Positioned(
            bottom: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                ElevatedButton(
                    onPressed: (){
                      navigatorPush(context: context, widget: FavoriteScreen());
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Color(0XFFFF1616),
                            width: 1.5
                          )
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.white),

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const[
                         Text('Favorite',
                          style: TextStyle(
                            color: Color(0XFFFF1616),
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),),
                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.heart,color: Color(0XFFFF1616),)
                      ],
                    )),
                const SizedBox(width: 100,),
                ElevatedButton(
                    onPressed: (){navigatorPush(context: context, widget: Orders());
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                              color: Color(0XFFFFDF2C),
                              width: 1.5
                          )
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.white),

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const[
                        Text('Order',
                          style: TextStyle(
                            color: Color(0XFFFFDF2C),
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),),
                        SizedBox(width: 5,),
                        Icon(Icons.shopping_cart,color: Color(0XFFFFDF2C),)
                      ],
                    )),

              ],
            ),
          )
        ],
      );
  }
}
