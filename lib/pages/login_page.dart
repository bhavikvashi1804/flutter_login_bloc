import 'package:flutter/material.dart';

import '../mixins/validation_mixin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidationMixin {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

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
                validator: validateEmail,
                onSaved: (value) => email = value,
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  hintText: 'Password',
                ),
                obscureText: true,
                validator: validatePassword,
                onSaved: (value) => password = value,
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    print('Email Address $email');
                    print('Password $password');
                  }
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
