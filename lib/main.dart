import 'package:flutter/material.dart';
import 'package:mt3am/layout/homeLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mat3am',
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

