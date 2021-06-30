import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:
            AppBar(title: Title(color: Colors.blue, child: Text("Home Page"))),
      ),
    );
  }
}
