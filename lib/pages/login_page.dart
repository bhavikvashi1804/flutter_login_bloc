import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(),
              TextFormField(),
              RaisedButton(
                onPressed: null,
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
