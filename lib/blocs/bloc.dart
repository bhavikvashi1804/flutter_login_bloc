import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

import './validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  dispose() {
    _email.close();
    _password.close();
  }
}
