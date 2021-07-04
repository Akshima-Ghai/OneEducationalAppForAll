import 'package:flutter/material.dart';

// ignore: camel_case_types
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainpage(),
    );
  }
}

// ignore: camel_case_types
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

// ignore: camel_case_types
class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        
        
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    "Hello Students",
                    style: TextStyle(
                      color: Colors.white,
                   
                      
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      
                    ),
                  ),
                 
                  padding: EdgeInsets.all(10),
                  
                  decoration: BoxDecoration(  
                    
                    color: Colors.orange,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50)
                 
                  
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/profilePic.png"),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "What do you \nwant to  \nlearn today?",
              style: TextStyle(
                fontSize: 35,
                height: 1.3,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                        //  height: MediaQuery.of(context).size.height,
                        
                          width: MediaQuery.of(context).size.width*0.4 ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                               courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                               courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Data-Structures', 'Data structures',
                                  'img2', Color(0xffe9eefa), Colors.white),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Data-Structures', 'Data structures',
                                  'img2', Color(0xffe9eefa), Colors.white),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Data-Structures', 'Data structures',
                                  'img2', Color(0xffe9eefa), Colors.white),
                            ],
                          ),
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width*0.4,
                          child: Column(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget('Video Lecutures', 'Animation course',
                                  'img1', Color(0xffff6a65), Color(0xffff5954)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget("Programming", "Python for begginers",
                                  'img3', Color(0xffe9eefa), Colors.white),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget(
                                  "Graphic DeSign ",
                                  "Fundamentals of designing",
                                  'img4',
                                  Color(0xffbdcddfa),
                                  Color(0xffcedaff)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget(
                                  "Graphic DeSign ",
                                  "Fundamentals of designing",
                                  'img4',
                                  Color(0xffbdcddfa),
                                  Color(0xffcedaff)),
                              SizedBox(
                                height: 50,
                              ),
                              courseWidget(
                                  "Graphic DeSign ",
                                  "Fundamentals of designing",
                                  'img4',
                                  Color(0xffbdcddfa),
                                  Color(0xffcedaff)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       IconButton(
            //         onPressed: (){},
            //         icon: Icon(
            //           Icons.subscriptions,
            //           color: Color(0xff2657ce),
            //           size: 40,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: (){},
            //         icon: Icon(
            //           Icons.play_circle_filled,
            //           color: Color(0xff2657ce).withOpacity(0.5),
            //           size: 40,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: (){},
            //         icon: Icon(
            //           Icons.account_circle,
            //           color: Color(0xff2657ce).withOpacity(0.5),
            //           size: 40,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgcolor) {
    return Container(
      
     padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$category',
                style: TextStyle(
                  color: (categoryColor == Color(0xffe9eefa)
                      ? Color(0xff2657ce)
                      : Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 0.0,
            ),
            Text('$title',
                style: TextStyle(
                  color: (bgcolor == Color(0xffff5954)
                      ? Colors.white
                      : Colors.black),
                  fontSize: 20,
                  height: 1,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgcolor == Color(0xffff954)
                      ? Colors.red
                      : Color(0xff2657ce)),
                ),
                Expanded(
                    child: Container(
                  height: 10,
                  color: (bgcolor == Color(0xfffff5954)
                      ? Colors.white.withOpacity(0.5)
                      : Color(0xff2657ce).withOpacity(0.5)),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/$img.png'),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
