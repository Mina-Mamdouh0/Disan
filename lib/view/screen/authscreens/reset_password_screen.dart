


import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/login_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
  var formKey=GlobalKey<FormState>();

  var confirmationController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DisanCubit,DisanState>(
        builder: (context,state){
          var cubit=DisanCubit.get(context);
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

                    Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 450,
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
                                          controller: confirmationController,
                                          inputType: TextInputType.text,
                                          labelText: 'Confirmation Code',
                                          validator: (value){
                                            if(value!.isEmpty){
                                              return 'Please Enter The Correct The Confirmation Code';
                                            }
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
                                            },
                                            prefixIcon: Icons.lock,
                                        ),
                                        const SizedBox(height: 15,),
                                        defaultTextFiled(
                                            controller: confirmPasswordController,
                                            inputType: TextInputType.visiblePassword,
                                            labelText: 'Confirm Password',
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Confirm Password not like the password';
                                              }
                                            },
                                            prefixIcon: Icons.lock,
                                        ),

                                        const SizedBox(height: 15,),
                                        authButton(fct: (){
                                          if(formKey.currentState!.validate()){
                                            navigatorAndRemove(context: context, widget: LoginScreen());
                                          }},
                                            text: 'Create Password'),
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


