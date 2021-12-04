import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mt3am/module/cart_module.dart';
import 'package:mt3am/shared/styles/colors.dart';

import 'detail_module.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CarouselSlider(
                  items: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
          
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('assets/images/1.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                     Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
          
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('assets/images/2.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                  // model!.data!.banners
                  //     .map(
                  //       (e) => Image(
                  //         image: NetworkImage('${e.image}'),
                  //         errorBuilder: (context, error, stackTrace) {
                  //           return Container(
                  //             height: 250,
                  //             width: double.infinity,
                  //             child: Center(child: CircularProgressIndicator()));
                  //         },
                  //         width: double.infinity,
                  //         fit: BoxFit.cover,
                  //       ),
                  //     )
                  //     .toList(),
                  options: CarouselOptions(
                    
                    height: 200,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 8),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.easeIn,
                    scrollDirection: Axis.horizontal,
                  )
                  ),
                  const TabBar(
                    
                   indicatorColor: Colors.transparent,
                    isScrollable: false,
                    labelColor: Colors.amber,
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text('Food',style: TextStyle(fontSize: 15)),
                      ),
                        Tab(
                        child: Text('Hot drinks',style: TextStyle(fontSize: 15)),
                      ),
                        Tab(
                        child: Text('cold drinks',style: TextStyle(fontSize: 15)),
                      )
          
                    ]),
                    Expanded(
                      child: Container(
                      //  height: 400,
                        child: TabBarView(
                          children: [
                          g2("assets/images/3.png",'Sandwich',context),
                          g2("assets/images/4.png",'Tea',context),
                          g2("assets/images/5.png",'Coffee',context),
                        //  Container(
                        //     height: 100,
                        //     width: 100,
                        //     color: Colors.blue,
                        //   ),
                        //   Container(
                        //     height: 100,
                        //     width: 100,
                        //     color: Colors.orange,
                        //   ),
                        ]),
                      ),
                    )
          ],
          
        ),
      
    );
  }
}

Widget g2(String image,String title,context)=> ListView.separated(
  physics: BouncingScrollPhysics(),
  itemCount: 10,
  separatorBuilder: (BuildContext context, int index) {
    return SizedBox(height:10);
  },
  itemBuilder: (BuildContext context, int index) {
    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,),
                      child: InkWell(
                        onTap:(){
                          detailScreen(context,image, title);
                        },
                        child: Card(
                          elevation: 5,
                          color:Colors.white,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Container(
                            padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                     height: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(image),
                                            fit: BoxFit.contain),
                                      )),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  flex:2,
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("$title",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17)),
                                        SizedBox(height: 5,),
                                        Container(
                                       
                                       child: ListView.separated(
                                         shrinkWrap: true,
                                         scrollDirection: Axis.vertical,
                                         physics: NeverScrollableScrollPhysics(),
                                         itemCount: 3,
                                         separatorBuilder: (BuildContext context, int index) {
                                           return SizedBox(height: 5,);
                                         },
                                         itemBuilder: (BuildContext context, int index) {
                                           return size2(sizes[index],index);
                                         },
                                       ),
                                     ),
                                      ]
                                      ),
                                )
                               
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
  },
);


Widget g(String image,String title)=>GridView.builder(
  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
 // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    childAspectRatio: 4 / 4.5),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      detailScreen(context,image,title);
                    },
                    child: GridTile(
                     
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.zero,
                            //color: Colors.indigoAccent,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                           ),
                            child: Column(
                              
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 8),
                                  child: Container(
                                      height: 100,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image:  AssetImage(image),fit:BoxFit.contain) ,
                                          // color: Colors.red,
                                          borderRadius: BorderRadius.circular(15))
                                          ),
                                ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                          child: Text(title,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                           // color:Colors.white,
                                           fontSize: MediaQuery.of(context).size.width*0.05,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(horizontal: 15,vertical:0),
                                        //   child: Text("\$99.9",
                                        //   maxLines: 1,
                                          
                                        //   overflow: TextOverflow.ellipsis,
                                        //   style: TextStyle(
                                        //     color:Colors.grey[700],
                                        //     fontSize: MediaQuery.of(context).size.width*0.037
                                        //   ),),
                                        // )
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                                    child:Center(
                                      child: Icon(Icons.add,color: Colors.white,),
                                    )
                          ),
                        ],
                      ),
                      
                    ),
                  );
                },
              );



              List sizes =['S','M','L'];
 List price=[20,85,99.9];

Widget size2(size,index)=> 

    Container(
    height: 15,
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color:Colors.grey[350]!.withOpacity(0.5),
      borderRadius: BorderRadius.circular(7),
    ),
    child: Row(
      children: [
        Text(size , style : TextStyle(
                                           // color:Colors.white,
                                           fontSize: 10,
                                          
                                          ),),
        Spacer(),
        Text("\$${price[index]}",style:  TextStyle(
                                           // color:Colors.white,
                                           fontSize: 10,
                                          
                                          ),)
        
      ],
    )
    )
// )
;