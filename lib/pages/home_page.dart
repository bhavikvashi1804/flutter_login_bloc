import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Login with BLOC'),
      ),
      body: Center(
        child: Text('This is Login Page'),
      ),
    );
  }
}
