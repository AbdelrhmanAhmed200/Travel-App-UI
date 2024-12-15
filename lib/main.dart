import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screens/SplashScreen.dart';
import 'package:flutter_application_6/Screens/WelcomScreen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffedf2f6)
        ) ,
        home: SplashScreen(),
      );
  }

}
