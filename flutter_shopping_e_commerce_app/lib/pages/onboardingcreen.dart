import 'package:flutter/material.dart';
import 'package:flutter_shopping_e_commerce_app/pages/loginpage.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             "images/splsh.jpg",
              height: 250,
            ),
            const SizedBox(height: 20),

            Container(
              margin:const EdgeInsets.only(top: 10), // Adjusted margin
              child:const Text(
                "Yo Online Store",
                style: TextStyle(
                  color:  Color(0xFF4C53A5),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20), 

            SizedBox(
              height: 50,
              width: 200,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                 child: Ink(
                  padding:const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5), // Reduced padding
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color:  Color(0xFF4C53A5),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
