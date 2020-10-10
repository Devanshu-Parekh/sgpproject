import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ACPC Home Page", style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("lib/images/AcpcTheme.jpg"), fit: BoxFit.contain)
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("ACPC Application", style: TextStyle(color: Colors.black, fontSize: 20.0),)
            ],
          ),
        ),
      )
      //backgroundColor: Colors.tealAccent,
    );
  }
}
