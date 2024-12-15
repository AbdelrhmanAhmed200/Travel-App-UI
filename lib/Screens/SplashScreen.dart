import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screens/WelcomScreen.dart';
import 'dart:async';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // Navigate to the Welcome screen after a delay
  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 4)); // 3-second delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()), // Navigate to WelcomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A), // Splash screen background color
      body: Center(
        child: Image.asset('images/icon2.jpg',
        fit: BoxFit.cover,
        ), // Ensure this image exists and the path is correct
      ),
    );
  }
}
