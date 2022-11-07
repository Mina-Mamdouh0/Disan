
import 'package:disan/const.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title:  const Text('Profile',style:  TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings,color: Colors.black,size: 25),
          ),
          const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child:  Icon(Icons.language,color: Colors.black,size: 25)),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 225,
                child: Stack(
                  children: [
                    Container(
                      height: 175,
                      width: double.infinity,
                      decoration:  const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(Constant.kLogo)
                          )
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(Constant.kLogo),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Name',
                style:  TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
              const SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const  [
                          Text('100',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: 5,),
                          Text('Active Dans',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal
                            ),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const  [
                          Text('100',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: 5,),
                          Text('Follows',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal
                            ),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const  [
                          Text('100',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),),
                          SizedBox(height: 5,),
                          Text('Followers',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:const [
                     Text('About',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Constant.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  keyboardType:TextInputType.text ,
                  maxLines: 6,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    labelText: 'About',
                    hintText: 'About',
                    prefixIcon: const Icon(Icons.account_balance_wallet_outlined,),
                    contentPadding:const  EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Constant.primaryColor,width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red,width: 1),
                    ),
                  ),
                  validator: (value){},

                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){},
                    child: const Text('Save About',
                      style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.normal
                      ),)),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                      child:  Center(
                        child: Text('User Qr code',
                          style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.normal
                          ),),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.share,color: Constant.primaryColor,)),
                  const SizedBox(width: 5,),
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.show_chart,color: Constant.primaryColor,))

                  
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(onPressed: (){},
                        child: const Text('List View',
                        style: TextStyle(
                          color: Constant.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.normal
                        ),)),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: OutlinedButton(onPressed: (){},
                        child: const Text('Grid View',
                          style: TextStyle(
                              color: Constant.primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.normal
                          ),)),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}



