import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  void navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 70), // Add some space above the first image
              Image.asset(
                'assets/logo_dikantin.png',
                width: 450,
                height: 450,
              ),
              SizedBox(height: 30), // Add some space between the images
              Image.asset(
                'assets/jti_nova.png',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
