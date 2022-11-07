
import 'package:disan/const.dart';
import 'package:disan/view/screen/mainscreens/homescreens/profile_shop_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title:  const Text('Category',style:  TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search,color: Colors.black,size: 25),
          ),
          const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child:  Icon(Icons.language,color: Colors.black,size: 25)),
        ],

      ),
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
          GridView.builder(
            padding: const EdgeInsets.all(10),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 120
              ),
              itemCount: 30,
              itemBuilder: (context, index) {
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
                      ],
                    ),
                  ),
                );
              }),
        ],
      )
    );
  }
}
