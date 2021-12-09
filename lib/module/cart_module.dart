// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mt3am/module/order_model.dart';
// import 'package:mt3am/shared/componants/app_component.dart';
// import 'package:mt3am/shared/componants/components.dart';
// import 'package:mt3am/shared/styles/colors.dart';



// class CartScreen extends StatelessWidget {
//   CartScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         title: Image.asset(
//           'assets/images/Mat3am.png',
//           width: 100,
//         ),
//         centerTitle: true,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 ListView.separated(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: 10,
//                   separatorBuilder: (BuildContext context, int index) {
//                     return SizedBox(
//                       height: 10,
//                     );
//                   },
//                   itemBuilder: (BuildContext context, int index) {
//                     return cartItem(q: q);
//                   },
//                 ),
//                 SizedBox(
//                   height: 200,
//                 )
//               ],
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(color: defultColor),
//                           color: Colors.white.withOpacity(0.9)),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Text("Total price",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.bold)),
//                               Spacer(),
//                               Text("\$456",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.w500)),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Row(
//                             children: [
//                               Text("Shipping",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.bold)),
//                               Spacer(),
//                               Text("\$20",
//                                   style:
//                                       TextStyle(fontWeight: FontWeight.w500)),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Divider(),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           Row(
//                             children: [
//                               Text("Total ",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20)),
//                               Spacer(),
//                               Text("\$476",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17)),
//                             ],
//                           ),
//                         ],
//                       )),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   defaultButton(
//                       function: () {
//                         userInfoForOrder(context);
//                       },
//                       text: "Order Now"),
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }
