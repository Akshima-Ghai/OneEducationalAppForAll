import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildLogo(size),
              buildInputField("E-mail", true),
              buildInputField("Password", false),
              buildSignUpText(size),
              buildLoginButton(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogo(Size size) {
    return Container(
      child: Image.asset(
        "assets/images/temporary.png", //temporary logo.
        height: size.height / 6,
        width: size.width / 2,
      ),
      margin: EdgeInsets.only(top: 100, bottom: 40),
    );
  }

  Widget buildSignUpText(Size size) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Don't Have an account yet, "),
          InkWell(
            child: Text(
              "SignUp Now",
              softWrap: true,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/SignUp');
            },
          )
        ],
      ),
    );
  }

  Widget buildInputField(String fieldName, bool visible, {bottom = 20.0}) {
    return Container(
//      padding: EdgeInsets.only(left: 20, right: 15),
      child: TextField(
        cursorColor: Colors.blue,
        obscureText: !visible,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          labelText: fieldName,
          hintText: fieldName,
          hintStyle: TextStyle(fontSize: 18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      margin: EdgeInsets.fromLTRB(25, 0, 25, bottom),
    );
  }

  Widget buildLoginButton(Size size) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(size.width / 8, 15, size.width / 8, 15),
          primary: Colors.black,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, 'app/home');
        },
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
