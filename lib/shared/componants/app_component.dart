import 'package:flutter/material.dart';
import 'package:mt3am/shared/styles/colors.dart';

Widget cartItem({int q = 0})=>Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                          ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                 height: 90,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/3.png"),
                                        fit: BoxFit.contain),
                                  )),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Name of product",style: TextStyle(fontWeight:FontWeight.bold)),
                                 Text("99.9\$"),
                                 Row(
                                   children: [
                                     Text('Size:'),
                                     Text('M',style: TextStyle(fontWeight:FontWeight.bold)),
                                     SizedBox(width: 20,),
                                     InkWell(
                                       onTap: (){
                                         q++;
                                         print(q);
                                       },
                                       child: CircleAvatar(
                                         radius: 10,
                                         backgroundColor:defultColor,
                                         child: Center(child: Icon(Icons.add,size: 17,color: Colors.white,)),
                                       ),
                                     ),
                                    
                                  
                                      Text(" ${q} ",style: TextStyle(fontWeight:FontWeight.bold)),
                                      InkWell(
                                       onTap: (){
                                         if (q !=1){
                                         q--;
                                         }
                                       },
                                       child: CircleAvatar(
                                         radius: 10,
                                         backgroundColor:defultColor,
                                         child: Center(child: Icon(Icons.remove,size: 17,color: Colors.white,)),
                                       ),
                                     ),
                                  
                                   ],
                                 )
                                 ],
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.symmetric(vertical:5),
                               child: IconButton(
                                 icon: Icon(Icons.delete,),
                                onPressed: (){},
                                color: Colors.red,
                                iconSize: 20,
                                 )
                             ),
                          ],
                        ),
                      ),
                    );