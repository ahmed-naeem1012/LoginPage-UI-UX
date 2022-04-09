import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(LoginApplication());
}

class LoginApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginbutton() {
    Fluttertoast.showToast(msg: 'Login Button Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Login Here',
                  style: TextStyle(fontSize: 25, color: Colors.green),
                )
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 20, color: Colors.green,),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                filled: true,
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: loginbutton,
                  color: Colors.green,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  
                  'New User! Login here',
                  style: TextStyle(fontSize: 18, color: Colors.green),  
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
