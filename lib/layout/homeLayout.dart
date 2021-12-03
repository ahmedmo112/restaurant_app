// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mt3am/module/cart_module.dart';
import 'package:mt3am/module/home_module.dart';
import 'package:mt3am/shared/componants/components.dart';
import 'package:mt3am/shared/styles/colors.dart';
import 'package:mt3am/shared/styles/icon.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation:0.0,
          backgroundColor: Colors.white,
          title: Image.asset('assets/images/Mat3am.png',width: 100,),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
    
        ),
        body: Home(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            navigateTo(context, CartScreen());
          },
          backgroundColor: defultColor,
          child:Icon(Icons.shopping_cart_outlined)
          ),
      ),
    );
  }
}