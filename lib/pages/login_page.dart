import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'bhavik@gmail.com',
                ),
                validator: (String text) {
                  if (!text.contains('@')) {
                    return 'Please Enter a valid Email Address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  hintText: 'Password',
                ),
                obscureText: true,
                validator: (String text) {
                  if (text.length < 4) {
                    return 'Password must be atleast 4 char long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  _formKey.currentState.validate();
                },
                child: Text('Login'),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
