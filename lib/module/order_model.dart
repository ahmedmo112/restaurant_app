import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mt3am/module/home_module.dart';
import 'package:mt3am/shared/componants/components.dart';

userInfoForOrder(BuildContext context)=> showModalBottomSheet(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
  context: context,
   builder: (context){
     var adressController=TextEditingController();
     var phoneController=TextEditingController();
     var nameController=TextEditingController();
     return Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Text("Please enter your detils",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 SizedBox(height: 20,),
           defaultFormField(
             controller: nameController,
              type: TextInputType.name,
               validate: (val){},
                label: "Name",
                 prefix: Icons.person_outline

                 ),
                 SizedBox(height: 20,),
                 defaultFormField(
             controller: phoneController,
              type: TextInputType.phone,
               validate: (val){},
                label: "Phone",
                 prefix: Icons.phone_outlined
                 
                 ),
                 SizedBox(height: 20,),
                 defaultFormField(
             controller: adressController,
              type: TextInputType.text,
               validate: (val){},
                label: "Address",
                 prefix: Icons.location_city_outlined
                 
                 ),
                 Spacer(),
                    Row(
                      children: [
                         Text("Total ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),
                         Spacer(),
                          Text("\$476",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17)),
                         
                      ],
                    ),
                  SizedBox(height: 8,),
                 defaultButton(function: (){
                   showDialog(context: context,
                    builder: (context){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Image.asset('assets/images/done.gif'),
                      );
                    }
                    );
                    Timer(Duration(seconds: 2 ) , (){
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    }
                    // navigateTo(context, Home())
                    );
                   
                 }, text: "order")
         ],
       ),
     );
   }
   );