


import 'package:disan/bloc/disan_cubit.dart';
import 'package:disan/bloc/disan_state.dart';
import 'package:disan/const.dart';
import 'package:disan/view/screen/authscreens/reset_password_screen.dart';
import 'package:disan/view/screen/layout_screen.dart';
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
                                  controller: emailController,
                                  inputType: TextInputType.emailAddress,
                                  labelText: 'Email Address',
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter The Correct The Email';
                                    }
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


