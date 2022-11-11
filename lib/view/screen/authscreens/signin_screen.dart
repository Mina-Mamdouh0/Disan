


// ignore_for_file: must_be_immutable

import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/login_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  var formKey=GlobalKey<FormState>();
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmPasswordController=TextEditingController();

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
                        height: MediaQuery.of(context).size.height*0.6,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 20,
                      left: 20,
                      child: InkWell(
                        onTap: (){
                          navigatorAndRemove(context: context, widget: LoginScreen());
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

                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height:575,
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
                                          controller: nameController,
                                          inputType: TextInputType.text,
                                          labelText: 'Name',
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return 'Please Enter The Correct The name';
                                            }
                                            return null;

                                          },
                                          prefixIcon: Icons.person,
                                        ),
                                        const SizedBox(height: 15,),
                                        defaultTextFiled(
                                          controller: emailController,
                                          inputType: TextInputType.emailAddress,
                                          labelText: 'Email',
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return 'Please Enter The Correct The Email';
                                            }
                                            return null;

                                          },
                                          prefixIcon: Icons.email,
                                        ),
                                        const SizedBox(height: 15,),
                                        defaultTextFiled(
                                            controller: passwordController,
                                            inputType: TextInputType.visiblePassword,
                                            labelText: 'Password',
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Please Password is Shorted';
                                              }
                                              return null;

                                            },
                                            prefixIcon: Icons.lock,
                                        ),
                                        const SizedBox(height: 15,),
                                        defaultTextFiled(
                                            controller: passwordController,
                                            inputType: TextInputType.visiblePassword,
                                            labelText: 'Confirm Password',
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Confirm Password not like the password';
                                              }
                                              return null;

                                            },
                                            prefixIcon: Icons.lock,
                                        ),

                                        const SizedBox(height: 15,),
                                        authButton(fct: (){
                                          if(formKey.currentState!.validate()){
                                            navigatorAndRemove(context: context, widget: HomeLayout());
                                          }},
                                            text: 'Register'),
                                        const SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            const Text('I have a account?',
                                              style: TextStyle(fontSize: 16,
                                                  color: Constant.primaryColor
                                              ),),
                                            useTextButton(name: 'Login ',
                                                onPress: (){
                                                  navigatorAndRemove(context: context, widget: LoginScreen());
                                                }),
                                          ],
                                        ),
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

                  ],
                ),
              )
          );
        },
        listener: (context,state){

        });
  }
}


