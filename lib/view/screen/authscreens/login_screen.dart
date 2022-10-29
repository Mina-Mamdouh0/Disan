


import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/forgit_password_screen.dart';
import 'package:disan/view/screen/authscreens/signin_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
import 'package:disan/view/widget/compont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

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
                        child: SingleChildScrollView(
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
                                    controller: emailController,
                                    inputType: TextInputType.emailAddress,
                                    labelText: 'Email Address',
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return 'Please Enter The Correct The Email';
                                      }
                                    },
                                    prefixIcon: Icons.person,
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
                                      suffixIcon: cubit.obscureText?Icons.visibility:Icons.visibility_off,
                                      fctSuffixIcon: ()=>cubit.visiblePassword(),
                                      obscureText: cubit.obscureText
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: cubit.checkRemember,
                                        onChanged: (value){
                                          cubit.changeRemember(value!);
                                        },
                                      ),
                                      const SizedBox(width: 10,),
                                      const  Text('Remember Me',
                                          style: TextStyle(
                                            color: Constant.primaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                     child:
                                     useTextButton(name: 'Forget Password',
                                         onPress: (){
                                       navigatorPush(context: context, widget: ForgetPasswordScreen());
                                         }),
                                  ),
                                  const SizedBox(height: 15,),
                                  authButton(fct: (){
    if(formKey.currentState!.validate()){
    navigatorAndRemove(context: context, widget: HomeLayout());
                                  }},
                                      text: 'Login'),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children:  [
                                       Expanded(
                                        child: Divider(
                                          color:Colors.grey.shade600,
                                          thickness: 2,
                                        ),
                                      ),
                                       const SizedBox(
                                        width: 5,
                                      ),
                                      Text('OR',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 18,
                                        ),
                                      ),
                                       const SizedBox(
                                        width: 5,
                                      ),
                                       Expanded(
                                        child: Divider(
                                          color:Colors.grey.shade600,
                                          thickness: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Icon(FontAwesomeIcons.facebook,color: Constant.primaryColor,size: 30),
                                      ),
                                      const SizedBox(
                                        width: 30
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/image/google.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Align(
                                    alignment: Alignment.center,
                                    child: useTextButton(name: 'Skip',
                                        onPress: (){
                                          navigatorAndRemove(context: context, widget: HomeLayout());
                                        }),
                                  ),
                                  Row(
                                    children: [
                                      const Text('Don\'t have a account?',
                                        style: TextStyle(fontSize: 16,
                                          color: Constant.primaryColor
                                        ),),
                                      useTextButton(name: 'Register',
                                          onPress: (){
                                        navigatorAndRemove(context: context, widget: SignUpScreen());
                                          }),
                                    ],
                                  ),
                                ],
                              ),
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


