import 'package:flutter/material.dart';

import './pages/login_page.dart';
import './blocs/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
