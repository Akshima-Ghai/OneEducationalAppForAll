import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:one_edu_app_for_all/Main_page.dart';




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
        fontFamily:'Avenir',
        primarySwatch: Colors.blue,
      ),
       routes: {
        '/mainPage' : (context)=> MainPage()
      },
      

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


// ignore: camel_case_types
class home extends StatefulWidget {
  
  @override
  _homeState createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5954),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Online Learning",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "is not the next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "big thing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "it is now the ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "BIG THING",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      height: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height *0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/splash.png'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      openMainPage();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        'Continue..',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  void openMainPage()
  {
    Navigator.pushNamed(context, '/mainPage');
  }
}

