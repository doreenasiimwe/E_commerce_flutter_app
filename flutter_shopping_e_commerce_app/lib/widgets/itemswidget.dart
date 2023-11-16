import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({Key? key});

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

  // List of product descriptions
  final List<String> productDescriptions = [
    "Elegant heels for special occasions.",
    "Stylish and sophisticated watches.",
    "Fashionable and classy bags.",
    "Durable and stylish travel bags.",
    "Casual and trendy everyday bags.",
    "Chic heels for party nights.",
    "Elegant watches for ladies.",
  ];

  // List of product prices
  final List<double> productPrices = [75.0, 120.0, 50.0, 80.0, 35.0, 60.0, 100.0];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 7; i++) // Start from 1
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigate to different destinations based on the index i
                    switch (i) {
                      case 1:
                        Navigator.pushNamed(context, "ItemPage");
                        break;
                      case 2:
                        Navigator.pushNamed(context, "ItemPage2");
                        break;
                      case 3:
                        Navigator.pushNamed(context, "ItemPage3");
                        break;
                        case 4:
                        Navigator.pushNamed(context, "ItemPage4");
                        break;
                        case 5:
                        Navigator.pushNamed(context, "ItemPage5");
                        break;
                        case 6:
                        Navigator.pushNamed(context, "ItemPage6");
                        break;
                      case 7:
                        Navigator.pushNamed(context, "ItemPage7");
                        break;
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.jpg",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    (i <= productNames.length)
                        ? productNames[i - 1]
                        : "Product Title", // Use product name dynamically
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    (i <= productDescriptions.length)
                        ? productDescriptions[i - 1]
                        : "Product Description", // Use product description dynamically
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${(i <= productPrices.length) ? productPrices[i - 1] : 0.0}", // Use product price dynamically
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
