import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';

class UI_USER extends StatefulWidget {


  @override
  _UI_USERState createState() => _UI_USERState();
}

class _UI_USERState extends State<UI_USER> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: Colors.lightBlue[100],
      body:

      Column(
          children: [
            SizedBox(height: 100.0,),
            RichText(
                text: TextSpan(
                    text: 'Learn',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Zania',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.pinkAccent))
                    ])),
            
                 Container(
                   padding: EdgeInsets.only(left:30.0),
                      height: 360,
                      child: Image(
                        image: AssetImage("images/teaching.png"),
                        fit: BoxFit.contain,
                      ),

                    ),
            SizedBox(height: 20.0,),
            RichText(
                text: TextSpan(
                    text: 'Login ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'As',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange
                              ))
                    ])),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               RaisedButton(
                 onPressed: (){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => signup(),
                   )
                   )
                 },
                 padding: EdgeInsets.all(0.0),
               shape: RoundedRectangleBorder(borderRadius:
                BorderRadius.circular(30.0)),
                elevation: 30.0,
                child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                     Color(0xFFFF9800),
                     Color(0xFFE65100)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth:150,
                    maxHeight:50,
                  ),
                  alignment: Alignment.center,
                  child: Text('LEARNER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                        fontWeight: FontWeight.bold,

                  ))),
                ),
                
               ),
                SizedBox(width: 30.0,),
                 RaisedButton(
                 onPressed: (){},
                 padding: EdgeInsets.all(0.0),
               shape: RoundedRectangleBorder(borderRadius:
                BorderRadius.circular(30.0)),
                elevation: 30.0,
                child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                     Color(0xFFFF9800),
                     Color(0xFFE65100)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth:150,
                    maxHeight:50,
                  ),
                  alignment: Alignment.center,
                  child: Text('TEACHER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                        fontWeight: FontWeight.bold,

                  ))),
                ),
                
               ),
              ],
            ),
          ],
        )

    );
  }
}