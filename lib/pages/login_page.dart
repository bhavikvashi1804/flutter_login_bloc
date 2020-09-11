import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/blocs/bloc.dart';

import '../blocs/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(bloc),
            SizedBox(height: 20.0),
            passwordField(bloc),
            SizedBox(height: 20.0),
            submitButton(bloc)
          ],
        ),
      ),
    );
  }
}

Widget emailField(Bloc bloc) {
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

Widget passwordField(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextFormField(
        decoration: InputDecoration(
          labelText: 'Enter Password',
          hintText: 'Password',
          errorText: snapshot.error,
        ),
        obscureText: true,
        onChanged: bloc.changePassword,
      );
    },
  );
}

Widget submitButton(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.submitValid,
    builder: (context, snapshot) {
      return RaisedButton(
        onPressed: !snapshot.hasData
            ? null
            : () {
                print("Form is valid");
              },
        child: Text('Login'),
        color: Colors.blue,
      );
    },
  );
}
