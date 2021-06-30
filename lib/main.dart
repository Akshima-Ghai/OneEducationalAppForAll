import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:one_edu_app_for_all/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneEduApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          //SplashScreen Function
          duration: 3000,
          splash: Image.asset(
            "assets/images/temporary.png", //Input the path of the image
            // width, height can be used to alter
          ),
          nextScreen: home(),
          splashTransition:
              SplashTransition.fadeTransition, //type of transition
          backgroundColor: Colors.green //color
          ),
    );
  }
}
