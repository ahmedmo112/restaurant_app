import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mt3am/shared/componants/components.dart';
import 'package:mt3am/shared/styles/colors.dart';

 int q = 1;

class CartScreen extends StatelessWidget {
   CartScreen({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/Mat3am.png',
          width: 100,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            physics:BouncingScrollPhysics(),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
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
                  },
                ),
                SizedBox(height: 200,)
              ],
            ),
          ),
          
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 20),
                child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:20,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.9)
                ),
                child:
                Column(
                  children: [
                    Row(
                      children: [
                         Text("Total price",style: TextStyle(fontWeight:FontWeight.bold)),
                         Spacer(),
                          Text("\$456",style: TextStyle(fontWeight:FontWeight.w500)),
                         
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                         Text("Shipping",style: TextStyle(fontWeight:FontWeight.bold)),
                         Spacer(),
                          Text("\$20",style: TextStyle(fontWeight:FontWeight.w500)),
                         
                      ],
                    ),
                    SizedBox(height: 8,),
                    Divider(),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                         Text("Total ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20)),
                         Spacer(),
                          Text("\$476",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17)),
                         
                      ],
                    ),

                  ],
                )
              ),
               SizedBox(height: 20,),
               defaultButton(function: (){}, text: "Order Now"),
                ],
          )
              ),
            
        ],
      ),
    );
  }
}
