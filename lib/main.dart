import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt3am/layout/cubit/cubit.dart';

import 'package:mt3am/layout/homeLayout.dart';
import 'package:mt3am/shared/bloc_observer.dart';

void main() {
  // Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit()..readJson()
           
        ),
      ],
       
     child:  MaterialApp(
      title: 'mat3am',
      debugShowCheckedModeBanner: false,
      home: HomeLayout()
      )
    );
  }
}

