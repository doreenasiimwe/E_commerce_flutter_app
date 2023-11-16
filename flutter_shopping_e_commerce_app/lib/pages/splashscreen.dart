import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_e_commerce_app/pages/onboardingcreen.dart'; // Make sure to adjust the import path

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/onboarding.jpg', 
              width: 100, 
              height: 100, 
            ),
            SizedBox(height: 20), 
            Text(
              "Yo Online Store",
              style: TextStyle(
                color: Color(0xFF4C53A5),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
