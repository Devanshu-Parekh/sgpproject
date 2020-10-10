import 'package:firstproject/pages/SignIn.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  String _email,_password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Sign Up Page", style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Form(
        key: _formKey,
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              // ignore: missing_return
              validator:(input){
                if(input.isEmpty) {
                  return 'Enter an email';
                }
              } ,
              onSaved: (input) => _email = input,
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
            ),
            TextFormField(
              // ignore: missing_return
              validator: (input) {
                if(input.length<6) {
                  return 'Enter password with atleast 6 characters';
                }
              },
              onSaved: (input) => _password = input,
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            Container(
              child: RaisedButton(
                onPressed: signIn,
                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20.0 ),),
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }

  void signIn() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginPage()));
  }
}
