import 'package:disan/const.dart';
import 'package:disan/view/screen/Settings.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:disan/view/widget/profile_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProfileShopScreen extends StatefulWidget {
  ProfileShopScreen({Key? key}) : super(key: key);

  @override
  State<ProfileShopScreen> createState() => _ProfileShopScreen();
}

class _ProfileShopScreen extends State<ProfileShopScreen> {
  bool isListView = true;
  double rating = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:
              const Icon(Icons.arrow_back_sharp, color: Colors.black, size: 25),
        ),
        title: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              prefixIcon: const Icon(Icons.search),
              hintText: "Search"),
        ),
        actions: [
          IconButton(
            onPressed: () {                      navigatorPush(context: context, widget: const Settings());
            },
            icon: const Icon(Icons.settings, color: Colors.black, size: 25),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(Icons.language, color: Colors.black, size: 25)),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * 0.5,
            child: Stack(
              children: [
                //Cover photo
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(Constant.kLogo))),
                ),
                //icons share and like
                Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.share))),
                Positioned(
                    top: 50,
                    right: 10,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.whatsapp_rounded))),
                //divider
                Positioned(
                    top: 220,
                    child: Container(
                      height: 3,
                      color: Colors.blue,
                      width: size.width,
                    )),
                //Profile photo
                Positioned(
                  top: 120,
                  left: 2,
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(Constant.kLogo))),
                  ),
                ),
                    //Profile name
                const Positioned(
                  top: 320,
                  left: 50,
                  child: Text("Shop Name",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
                //Category name
                const Positioned(
                  top: 340,
                  left: 50,
                  child: Text("name Category",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
                //Icons
                Positioned(
                  top:230 ,
                  left: 190,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                    ),
                    Text("Like",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                )),
                Positioned(
                  top:230 ,
                  left: 250,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                    Icons.add,
                    color: Colors.grey,
                    ),
                    Text("Follow",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                )),
                Positioned(
                  top:230 ,
                  left: 300,
                    width: 100,
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                    Icon(
                    Icons.notifications_active_rounded,
                    color: Colors.grey,
                    ),
                    Text("Active Dense",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ],
                )),



              ],
            ),
          ),
          Row(
            children: [
              const Text(
                'Rating',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              RatingStars(
                value: rating,
                onValueChanged: (v) {
                  //
                  setState(() {
                    rating = v;
                  });
                },
                starBuilder: (index, color) => Icon(
                  Icons.star,
                  color: color,
                ),
                starCount: 5,
                starSize: 30,
                valueLabelColor: const Color(0xff9b9b9b),
                valueLabelTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0),
                valueLabelRadius: 10,
                maxValue: 5,
                starSpacing: 2,
                maxValueVisibility: true,
                valueLabelVisibility: true,
                animationDuration: Duration(milliseconds: 1000),
                valueLabelPadding: const EdgeInsets.symmetric(
                    vertical: 1, horizontal: 8),
                valueLabelMargin:
                const EdgeInsets.only(right: 8, left: 20),
                starOffColor: const Color(0xffe7e8ea),
                starColor: Colors.yellow,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              maxLines: 2,
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'About',
                hintText: 'About',
                prefixIcon: const Icon(
                  Icons.account_balance_wallet_outlined,
                ),
                contentPadding: const EdgeInsets.all(20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.red, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              validator: (value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              maxLines: 2,
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'Location',
                hintText: 'Location',
                prefixIcon: const Icon(
                  Icons.location_on_outlined,
                ),
                contentPadding: const EdgeInsets.all(20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.red, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              validator: (value) {},
            ),
          ),          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      'User Qr code',
                      style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Constant.primaryColor,
                  )),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.show_chart,
                    color: Constant.primaryColor,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        isListView = true;
                      });
                    },
                    child: const Text(
                      'List View',
                      style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    )),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        isListView = false;
                      });
                    },
                    child: const Text(
                      'Grid View',
                      style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (isListView)
            SizedBox(
              width: double.infinity,
              height: size.height * 31,
              child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) => PostTimeLine(size: size),
                  separatorBuilder: (context, _) => const SizedBox(height: 10),
                  itemCount: 5),
            ),
          if (!isListView)
            Wrap(
              spacing: 30,
              runSpacing: 20,
              children: List.generate(
                  20,
                  (index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Image(
                        image: AssetImage(
                          Constant.kLogo,
                        ),
                        height: 100,
                        width: 100,
                      ))),
            )
        ],
      ),
    );
  }
}
