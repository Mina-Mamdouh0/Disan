


import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/login_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          var cubit=DisanCubit.get(context);
          return Scaffold(
              body:SafeArea(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      height: MediaQuery.of(context).size.height*0.5,
                      decoration: const BoxDecoration(
                        color: Constant.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),

                      child: Image.asset(Constant.kLogo,
                          width: 180,
                          height: 180),
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
                                const SizedBox(height: 15,),
                                defaultTextFiled(
                                  controller: nameController,
                                  inputType: TextInputType.text,
                                  labelText: 'Name',
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter The Correct The name';
                                    }
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
                                    suffixIcon: cubit.obscurePassword?Icons.visibility:Icons.visibility_off,
                                    fctSuffixIcon: ()=>cubit.visibleSignUpPassword(),
                                    obscureText: cubit.obscurePassword
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
                                    },
                                    prefixIcon: Icons.lock,
                                    suffixIcon: cubit.obscureConPassword?Icons.visibility:Icons.visibility_off,
                                    fctSuffixIcon: ()=>cubit.visibleSignConPassword(),
                                    obscureText: cubit.obscureConPassword
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
                    )
                  ],
                ),
              )
          );
        },
        listener: (context,state){

        });
  }
}


