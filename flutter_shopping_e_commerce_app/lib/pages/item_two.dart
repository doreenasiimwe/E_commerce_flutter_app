import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/Itemappbar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/itembottomnavbar.dart';

class ItemPage2  extends StatelessWidget {
  List<Color>  Clrs = [
    Colors.black,
    Colors.grey,
    Colors.blue,
    Colors.indigo,
    Colors.yellow,
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),  
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/2.jpg",
            height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
             child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 48,
                    bottom: 15,
                  ),
                  child: Row( 
                    children: [
                      Text("Gentle Watches",
                      style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold, 
                        
                      ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:5, bottom: 10),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                          Icons.favorite,
                          color: Color(0xFF4C53A5),
                        ),
                        onRatingUpdate: (index) { 
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                  5
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                            
                                  )

                            ]),
                            child: Icon(CupertinoIcons.minus,
                            size: 18,
                            color: Color(0xFF4C53A5),
                            ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                               Container(
                                padding: EdgeInsets.all(
                                  5
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                            
                                  )

                            ]),
                            child: Icon(CupertinoIcons.plus,
                            size: 18,),
                              ),
                            ],

                          );
                        },
                      ),
                    ],
                  ),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 12),
                    child: Text("Sophiscated and Stylish Watches, available in different colors and sizes",
                    style: TextStyle(
                      
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),
                    textAlign:TextAlign.justify ,
                    ), 
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 8),
                     child: Row(
                      children: [
                        Text(
                          "Size: ", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                              ),
                        ),
                        SizedBox(
                          width: 10,

                        ), 
                        Row(
                          children: [
                            for(int i =5; i<10; i++)
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  ),
                                ]

                              ),
                              child: Text(
                                i.toString(),
                                
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ),
                          ],
                        )                  
                       ],
                     ),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 8),
                     child: Row(
                      children: [
                        Text(
                          "Colour: ", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                              ),
                        ),
                        SizedBox(
                          width: 10,

                        ), 
                        Row(
                          children: [
                            for(int i =0; i<5; i++)
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Clrs[i],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                  ),
                                ]

                              ),
                      
                            ),
                          ],
                        )                  
                       ],
                     ),
                  ),
              ],
             ),
              ),
            ),

          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}