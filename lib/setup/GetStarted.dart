import 'package:firstproject/pages/Home.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/firstproject/lib/pages/SignIn.dart';
import 'package:flutter/material.dart';
class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        textTheme: new TextTheme(
          body1: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          )
        )

      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Get Started Page", style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.lightGreenAccent[100],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("lib/images/g1.jpg"), fit: BoxFit.fill)
          ),
            child: Center(
              child: Column(
                children: <Widget>[
                 //Text("Hello I am Devanshu Parekh", style: TextStyle(color: Colors.cyan),),

                  RaisedButton(
                    onPressed: getstarted,
                    child: Text("Get Started", style: TextStyle(color: Colors.black,fontSize: 20.0),),
                    color: Colors.amberAccent,
                  )
                ],

              ),
            )
        ),
      ),
    );
  }

  void getstarted() async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }
}
