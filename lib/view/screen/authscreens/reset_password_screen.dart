


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
                                    suffixIcon: cubit.obscureResetPassword?Icons.visibility:Icons.visibility_off,
                                    fctSuffixIcon: ()=>cubit.visibleResetPassword(),
                                    obscureText: cubit.obscureResetPassword
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
                                    suffixIcon: cubit.obscureConResetPassword?Icons.visibility:Icons.visibility_off,
                                    fctSuffixIcon: ()=>cubit.visibleResetConPassword(),
                                    obscureText: cubit.obscureConResetPassword
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


