
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title:  const Text('Favorite',style:  TextStyle(color: Colors.black),),
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
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30,
          itemBuilder: (context, index) {
            return Text('$index');
          }),
    );
  }
}
