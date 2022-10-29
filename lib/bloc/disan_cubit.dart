import 'package:disan/bloc/disan_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisanCubit extends Cubit<DisanState>{
  DisanCubit():super(InitialState());

  static DisanCubit get(context)=>BlocProvider.of(context);
  bool isPlaying=true;
  late var player1 ;
  late  AnimationController controller ;
  //nav bar
  int currentIndexNav = 0;
  void changeIndexNav(int index){
    currentIndexNav=index;
    emit(ChangeIndexNav());
  }
  //login && sign up && reset password
  bool obscureText=true;
  bool obscurePassword=true;
  bool obscureConPassword=true;
  bool obscureResetPassword=true;
  bool obscureConResetPassword=true;
  void visiblePassword(){
    obscureText=!obscureText;
    emit(VisiblePasswordLogin());
  }
  void visibleSignUpPassword(){
    obscurePassword=!obscurePassword;
    emit(VisiblePasswordSignUp());
  }
  void visibleSignConPassword(){
    obscureConPassword=!obscureConPassword;
    emit(VisibleConPasswordSignUp());
  }
  void visibleResetPassword(){
    obscureResetPassword=!obscureResetPassword;
    emit(VisibleResetPassword());
  }
  void visibleResetConPassword(){
    obscureConResetPassword=!obscureConResetPassword;
    emit(VisibleResetConPassword());
  }
  //Remember Me
bool checkRemember=false;
  void changeRemember(bool val){
    checkRemember=val;
    emit(CheckRememberLogin());
  }



}