import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title:  const Text('Settings',style:  TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: const [

           Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child:  Icon(Icons.language,color: Colors.black,size: 25)),
        ],

      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/background.jpg'),
            fit: BoxFit.cover,
          ),   ),
        child: ListView(

          padding: const EdgeInsets.all(20),
          children: [
            Card(
              margin: const EdgeInsets.all(10),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10.0),
                ),
                child: const ListTile(leading: Icon(Icons.person),title: Text("Edit Profile"), trailing: Icon(Icons.arrow_forward_ios),)),
            Card(
                margin: const EdgeInsets.all(10),

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10.0),
                ),
                child: const ListTile(leading: Icon(Icons.block),title: Text("block List"), trailing: Icon(Icons.arrow_forward_ios),)),
            Card(
                margin: const EdgeInsets.all(10),

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10.0),
                ),
                child: SwitchListTile(value: false, onChanged: (value){},title: const Text("Auto Download"),secondary: const Icon(Icons.download),)),
            Card(
                margin: const EdgeInsets.all(10),

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(10.0),
                ),
                child: const ListTile(leading: Icon(Icons.output_sharp),title: Text("Sign out"), trailing: Icon(Icons.arrow_forward_ios),)),

          ],
        ),
      ) ,
    );
  }
}
