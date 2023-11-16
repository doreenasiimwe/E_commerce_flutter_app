// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/categorieswidget.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/homeappbar.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/itemswidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/popular_items.dart';
import 'package:flutter_shopping_e_commerce_app/widgets/recommended_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top:15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Your Item...",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.camera_alt,
                    color: Color(0XFF4C53A5),
                    size: 27,)
                   ],
                ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                    
                  ),
                  child: Text("Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                  ),

                ),
                //categories Widget 
                CategoriesWidget(),
          //items
          Container(
            alignment: Alignment.centerLeft,
            margin:EdgeInsets.symmetric(vertical: 20, horizontal: 10) ,
            child: Text("Best Selling",

           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4C53A5),

           ),
           ),
          ),
          //Items Widget
          ItemsWidget(),
           Container(
            alignment: Alignment.centerLeft,
            margin:EdgeInsets.symmetric(vertical: 20, horizontal: 10) ,
            child: Text("Popular Items",

           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4C53A5),

           ),
           ),
          ),
          PopularItemsWidget(),
           Container(
            alignment: Alignment.centerLeft,
            margin:EdgeInsets.symmetric(vertical: 20, horizontal: 10) ,
            child: Text("Recommnded Items",

           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4C53A5),

           ),
           ),
          ),
          RecommendedItems(),
          
              ],
            ),
          ),  
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          
        },
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.home,
          
          size: 30,
          color: Colors.white,
          
          ),
          
           Icon(
            CupertinoIcons.cart_fill,
          size: 30,
          color: Colors.white,
          ),
           Icon(Icons.list,
          size: 30,
          color: Colors.white,
          )
        ],

      ),
    
    );
  }
}