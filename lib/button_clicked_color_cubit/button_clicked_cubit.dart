import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'button_clicked_state.dart';

class ButtonClickedCubit extends Cubit<ButtonClickedState> {
  ButtonClickedCubit() : super(ButtonInitial());

  static ButtonClickedCubit get(context) => BlocProvider.of(context);

  bool clicked =false;
  Color boxColor=Colors.white;
  Color iconColor=Color(0xff134161);

  void changeColor(){
    if(clicked){
      boxColor = Color(0xff134161);
      iconColor=Colors.white;
    }else{
      boxColor=Colors.white;
      iconColor=Color(0xff134161);
    };
    clicked=!clicked;
    emit(ButtonClicked());
  }


}
