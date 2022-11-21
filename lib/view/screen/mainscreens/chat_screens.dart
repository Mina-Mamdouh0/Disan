
import 'package:disan/const.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ChatScreen extends StatefulWidget {
   ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var formKey=GlobalKey<FormState>();

  var phoneController=TextEditingController();

  bool isPhone=false;


  @override
  Widget build(BuildContext context) {
    return  isPhone?
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ListView.separated(
          shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const[
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(Constant.kLogo),
                      ),
                      SizedBox(width: 20,),
                      Text('Disan test',
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.start,
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context,index){
              return const Divider();
            },
            itemCount: 10)),
        const SizedBox(height: 20,),
      ],
    )
        :
    Stack(
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
        Align(
          alignment: Alignment.center,
          child: Card(
            margin:  EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                         Expanded(
                          child:  Text('Conversations are via WhatsApp',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                            ),),
                        ),
                        Icon(FontAwesomeIcons.whatsapp,
                        color: Colors.greenAccent,size: 35,)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    defaultTextFiled(
                      controller: phoneController,
                      inputType: TextInputType.number,
                      labelText: 'Phone Number',
                      validator: (value){
                        if(value!.isEmpty||value.length<11){
                          return 'Phone Number less to 11 number';
                        }
                      },
                      prefixIcon: Icons.phone,
                    ),
                    const SizedBox(height: 15,),
                    authButton(fct: ()async{
                      if(formKey.currentState!.validate()){
                        setState(() {
                          isPhone=true;
                        });
                      }},
                        color: Colors.green,

                        text: 'Registration Phone'),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


