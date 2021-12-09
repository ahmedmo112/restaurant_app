
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt3am/layout/cubit/states.dart';
import 'package:mt3am/model/menumodel.dart';

class AppCubit extends Cubit<AppSates> {
  AppCubit() : super(Appinitialstate());

  static AppCubit get(context) => BlocProvider.of(context);

  int q = 1;

   MenuClass? menuModel;
  
   readJson() {
    rootBundle.loadString('assets/menu.json').then((value) {
      menuModel = MenuClass.fromJson(jsonDecode(value));
     // print(value);
      emit(ReadDataSucessState());
    });
    
    
  }
  
}