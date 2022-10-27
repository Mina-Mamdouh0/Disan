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


}