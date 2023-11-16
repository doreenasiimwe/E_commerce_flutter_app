import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key});

  // List of product names
  final List<String> productNames = [
    "Fancy & Classy Heels",
    "Gentle Watches",
    "Fancy & Classy Bags",
    "Travel Bags",
    "Casual Bags",
    "Party Heels",
    "Lady Watches",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/$i.jpg",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    (i <= productNames.length)
                        ? productNames[i - 1]
                        : "Product Title", // Use product name dynamically
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0XFF4c53A5),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
