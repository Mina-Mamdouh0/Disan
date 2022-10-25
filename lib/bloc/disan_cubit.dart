import 'package:disan/bloc/disan_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisanCubit extends Cubit<DisanState>{
  DisanCubit():super(InitialState());

  static DisanCubit get(context)=>BlocProvider.of(context);

  //nav bar
  int currentIndexNav = 0;
  void changeIndexNav(int index){
    currentIndexNav=index;
    emit(ChangeIndexNav());
  }


}