


import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/reset_password_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);
  var formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DisanCubit,DisanState>(
        builder: (context,state){
          return Scaffold(
              body:SafeArea(
                child: Stack(
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
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.5,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 300,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Card(
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
                                        const SizedBox(height: 25,),
                                        defaultTextFiled(
                                          controller: emailController,
                                          inputType: TextInputType.emailAddress,
                                          labelText: 'Email Address',
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return 'Please Enter The Correct The Email';
                                            }
                                            return null;
                                          },
                                          prefixIcon: Icons.email,
                                        ),
                                        const SizedBox(height: 15,),
                                        authButton(fct: (){
                                          if(formKey.currentState!.validate()){
                                            navigatorPush(context: context, widget: ResetPasswordScreen());
                                          }},
                                            text: 'Send Code'),
                                        const SizedBox(height: 10,),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topCenter,
                                child:  CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 40.0,
                                    backgroundColor: Constant.primaryColor,
                                    backgroundImage: AssetImage(Constant.kLogo),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Colors.white30,
                              shape: BoxShape.circle
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_back,color: Constant.primaryColor,size: 30),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              )
          );
        },
        listener: (context,state){

        });
  }
}


