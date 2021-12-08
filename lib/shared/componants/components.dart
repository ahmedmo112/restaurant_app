// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

//! ////////////////////////////////////////////
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
//! ///////////////////////////////////////////

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.amber,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
     

        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(dynamic? val)? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required String? Function(String? val)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      onChanged: (s) {
        onChange ?? () {};
      },
      onTap: () {
        onTap ?? () {};
      },
      validator: (value) {
        return validate!(value);
      },
      cursorColor: Colors.amber,
    
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
          labelText: label,
          hintText:label ,
          labelStyle: TextStyle(color: Colors.amber),
         // hintStyle:TextStyle(color: Colors.amber) ,
          prefixIcon: Icon(prefix, color: Colors.amber,),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: () {
                    suffixPressed!();
                  },
                  icon: Icon(
                    suffix,
                   
                  ),
                )
              : null,
           
          border: OutlineInputBorder(
           // borderSide: BorderSide(color:Colors.amber),
            borderRadius: BorderRadius.circular(30),
            
          ),
          //focusColor: Colors.amber,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.amber)

          ),
          
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey.shade300)
          ),
            
          ),
    );

// void showToast({
//   required String text,
//   required ToastStates state,
// }) =>
//     Fluttertoast.showToast(
//         msg: text,
//         toastLength: Toast.LENGTH_LONG,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: chooseToastColor(state),
//         textColor: Colors.white,
//         fontSize: 16.0);

enum ToastStates { SUCCESS, ERROR, WARNING }

Color chooseToastColor(ToastStates state) {
  Color color;

  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}







