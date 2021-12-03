import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:mt3am/module/cart_module.dart';
import 'package:mt3am/shared/componants/components.dart';
import 'package:mt3am/shared/styles/colors.dart';

detailScreen(context, String image,String title) => showModalBottomSheet(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(250))),
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                          child: Container(
                              child: Text(
                        title,
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ))),
                      Expanded(flex: 1 ,child: Image.asset(image))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              
              Container(
                child:Text(
                  "jnzdk nd fkvs k ffdsn vsfkjvh kksd vsd kds vkmsdjjvng sjd vd sk jdsvk",
                  style: TextTheme().caption,
                  ),
              ),
              SizedBox(height: 10,),
              Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              
              SizedBox(height: 8,),

               Container(
                 height: 100,
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                   itemCount: 3,
                   separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(height: 5,);
                   },
                   itemBuilder: (BuildContext context, int index) {
                     return size(sizes[index],index);
                   },
                 ),
               ),
              // Row(
              //   children: [
              //     Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              //     Spacer(),
              //     Text('price: ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
              //     Text('\$99.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  
              //   ],
              // ),
              SizedBox(height: 15,),
              Row(
                children: [
                
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         InkWell(
                                       onTap: (){
                                         q++;
                                         print(q);
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor:defultColor,
                                         child: Center(child: Icon(Icons.add,size: 17,color: Colors.white,)),
                                       ),
                                     ),
                                    
                                  
                                      Text("  ${q}  ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                                      InkWell(
                                       onTap: (){
                                         if (q !=1){
                                         q--;
                                         }
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor:defultColor,
                                         child: Center(child: Icon(Icons.remove,size: 17,color: Colors.white,)),
                                       ),
                                     ),
                       ],
                     ),
                   ),
                  Expanded(child: defaultButton(function: (){}, text: 'add'))
                ],
              ),
      
            ],
          ),
        ),
      );
    });

detailScreen2(context,image,{String title = 'Kalam kter kter kter '})=>showDialog(
  context: context,
   builder: (context){
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 80),
       child: Center(
         child: Container(
           decoration: BoxDecoration(
             color:Colors.white,
             borderRadius:
             BorderRadius.only(
               topRight: Radius.circular(100),
               topLeft: Radius.circular(10),
               bottomRight: Radius.circular(10),
               bottomLeft :Radius.circular(100)
             )
              // BorderRadius.circular(20)
           ),
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 120,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage(image))
                 ),
               ),
               SizedBox(height: 20,),
               Container(
                              child: Text(
                        title,
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
               SizedBox(height: 20,),

                Container(
                  
                  child: Text(
                  "jnzdk nd fkvs k ffdsn vsfkjvh kksd vsd kds vkmsdjjvng sjd vd sk jdsvk",
                  style: TextTheme().caption,
                  ),
                  
                ),
               SizedBox(height: 20,),
              Spacer(),
               Text('Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              
              SizedBox(height: 8,),

               Container(
                 
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                   itemCount: 3,
                   separatorBuilder: (BuildContext context, int index) {
                     return SizedBox(height: 5,);
                   },
                   itemBuilder: (BuildContext context, int index) {
                     return size(sizes[index],index);
                   },
                 ),
               ),
               SizedBox(height: 15,),
               Spacer(),
               Row(
                 children:[
                  Expanded(
                    child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             GestureDetector(
                                           onTap: (){
                                             q++;
                                             print(q);
                                           },
                                           child: CircleAvatar(
                                             radius: 15,
                                             backgroundColor:defultColor,
                                             child: Center(child: Icon(Icons.add,size: 17,color: Colors.white,)),
                                           ),
                                         ),
                                        
                                      
                                          Text("  ${q}  ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                                          GestureDetector(
                                           onTap: (){
                                             if (q !=1){
                                             q--;
                                             }
                                           },
                                           child: CircleAvatar(
                                             radius: 15,
                                             backgroundColor:defultColor,
                                             child: Center(child: Icon(Icons.remove,size: 17,color: Colors.white,)),
                                           ),
                                         ),
                  
                           ],
                         ),
                  ),
                       Expanded(
                         child: Container(
                         child: defaultButton(function: (){}, text: 'add',)),
                       )
                 ]
               )
              // Container(
              //   width: 100,
              //   child: Row(
              //     children: [
                  
              //       //  Expanded(
              //       //    child: Row(
              //       //      mainAxisAlignment: MainAxisAlignment.center,
              //       //      children: [
              //       //        GestureDetector(
              //       //                      onTap: (){
              //       //                        q++;
              //       //                        print(q);
              //       //                      },
              //       //                      child: CircleAvatar(
              //       //                        radius: 15,
              //       //                        backgroundColor:defultColor,
              //       //                        child: Center(child: Icon(Icons.add,size: 17,color: Colors.white,)),
              //       //                      ),
              //       //                    ),
                                      
                                    
              //       //                   //   Text("  ${q}  ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
              //       //                   //   GestureDetector(
              //       //                   //    onTap: (){
              //       //                   //      if (q !=1){
              //       //                   //      q--;
              //       //                   //      }
              //       //                   //    },
              //       //                   //    child: CircleAvatar(
              //       //                   //      radius: 15,
              //       //                   //      backgroundColor:defultColor,
              //       //                   //      child: Center(child: Icon(Icons.remove,size: 17,color: Colors.white,)),
              //       //                   //    ),
              //       //                   //  ),
              //       //      ],
              //       //    ),
              //       //  ),
              //       defaultButton(function: (){}, text: 'add')
              //     ],
              //   ),
              // ),
              // defaultButton(function: (){}, text: 'add')
             ],
           ),
         ),
       ),
     );
   }
   );

 List sizes =['S','M','L'];
 List price=[20,85,99.9];

 int cIndex = 1;
Widget size(size,index)=> 
// InkWell(
//   onTap: (){
//     cIndex = index;
//     print(cIndex);
//   },
//   child: 
    GestureDetector(
      onTap: (){
        cIndex = index;
     print(cIndex);
      },
      child: Container(
       
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color:Colors.grey[350]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(7),
        border:index == cIndex? Border.all(color: Colors.amber,width: 2):Border.all(color: Colors.transparent)
      ),
      child: Row(
        children: [
          Text(size),
          Spacer(),
          Text("\$${price[index]}")
          
        ],
      )
      ),
    )
// )
;