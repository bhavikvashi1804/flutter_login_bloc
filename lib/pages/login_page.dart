import 'package:flutter/material.dart';

import '../blocs/bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed: () {},
              child: Text('Login'),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

Widget emailField() {
  return StreamBuilder(
    stream: bloc.email,
    builder: (context, snapshot) {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Email Address',
            hintText: 'bhavik@gmail.com',
            errorText: snapshot.error),
        onChanged: bloc.changeEmail,
      );
    },
  );
}
