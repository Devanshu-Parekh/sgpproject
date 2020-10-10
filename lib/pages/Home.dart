import 'package:firstproject/pages/SignUp.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/firstproject/lib/pages/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              // Expanded(child: RaisedButton(
              //   onPressed: SignIn,
              //   child: Text('Sign In'),
              // )),
              // Expanded(child: RaisedButton(
              //   onPressed: SignUp,
              //   child: Text('Sign Up'),
              // ))
              Text("This is not an official application.", style: TextStyle(color: Colors.white, fontSize: 30.0),),
              RaisedButton(
                onPressed: SignIn,
                child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20.0, ),),
                color: Colors.deepPurpleAccent,
              ),
              RaisedButton(
                onPressed: SignUp,
                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20.0 ),),
                color: Colors.deepPurpleAccent,
              )
            ],
          )
      ),
    );
  }

  void SignIn() async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
  }

  void SignUp() async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUpPage()));
  }
}

