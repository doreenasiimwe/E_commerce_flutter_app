import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
              "Total:",
              style: TextStyle(

                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
                fontSize: 22,

              ),
            ),
            Text(
              "\$250",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              ),
              ],
            ),
            Container(
              // alignment: Alignment.center,
              height: 50,
              width: 70,

              decoration: BoxDecoration(
                
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(5),
                
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}   