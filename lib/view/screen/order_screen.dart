import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title:  const Text('Orders',style:  TextStyle(color: Colors.black),),
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
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
image: DecorationImage(
            image: AssetImage('assets/image/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return  Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(10.0),

              ),
              semanticContainer: true,
              child: ListTile(

                leading: const Icon(Icons.shopping_bag),
                title: Text('Order ${index+1}'),
                subtitle: Text('Order ${index+1}'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ),
      ),
    );
  }
}
