import 'dart:async';

import './validators.dart';

class Bloc extends Object with Validators {
  //There are two options
  //1. extends Object with Validators
  //Object does not has any method
  //2. extends Validators

  final _email = StreamController();
  final _password = StreamController();

  //Add the data to Stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //change the data of stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;
}
