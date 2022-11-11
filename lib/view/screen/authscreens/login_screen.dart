


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

// ignore: must_be_immutable
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
                          height: 650,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Card(
                                margin:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
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
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: const Icon(FontAwesomeIcons.facebook,color: Constant.primaryColor,size: 40),
                                            ),
                                            const SizedBox(
                                                width: 30
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/image/google.png",
                                                height: 40,width: 40,
                                                fit: BoxFit.fill,

                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
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
                                        const SizedBox(height: 8,),
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
                                              return null;
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
                                               color: const Color(0XFFFF1616),
                                               onPress: (){
                                             navigatorPush(context: context, widget: ForgetPasswordScreen());
                                               }),
                                        ),
                                        const SizedBox(height: 5,),
                                        authButton(fct: (){
    if(formKey.currentState!.validate()){
    navigatorAndRemove(context: context, widget: HomeLayout());
                                        }},
                                            text: 'Login'),
                                        const SizedBox(height: 5,),
                                        Align(
                                          alignment: Alignment.center,
                                          child: useTextButton(name: 'Skip',
                                              color: const Color(0XFFFF1616),
                                              size: 20,
                                              onPress: (){
                                                navigatorAndRemove(context: context, widget: HomeLayout());
                                              }),
                                        ),
                                        Row(
                                          children: [
                                            const Text('Don\'t have a account?',
                                              style: TextStyle(fontSize: 16,
                                                color:  Color(0XFFFF1616),
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
                              const Align(
                                alignment: Alignment.topCenter,
                                child:  CircleAvatar(
                                  radius: 47,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 40.0,
                                    backgroundColor: Colors.white,
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


