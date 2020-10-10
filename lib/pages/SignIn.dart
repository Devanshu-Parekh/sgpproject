import 'package:firstproject/pages/Home.dart';
import 'package:firstproject/pages/Page1.dart';
import 'package:firstproject/pages/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String _email,_password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Sign In Page", style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
        textTheme: new TextTheme(),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(

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
                  labelText: 'Email',
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
                  labelText: "Password",
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: signIn,
              child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20.0),),
              color: Colors.deepPurple,

            ),
            RaisedButton(
              onPressed: signUp,
              child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20.0 ),),
              color: Colors.deepPurple,

            )
            // Container(
            //   child: RaisedButton(
            //     onPressed: signUp,
            //     child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20.0 ),),
            //     color: Colors.deepPurple,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
 void signUp() {
   Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUpPage()));
 }
  Future<void> signIn() async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));

    final _formState = _formKey.currentState;
    if(_formState.validate()){
      _formState.save();
      // try{
      //
      //   FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser;
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      // }catch(e){
      //   print(e.message);
      // }
    }
  }
}