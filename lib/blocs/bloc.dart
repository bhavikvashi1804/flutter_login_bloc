import 'dart:async';

class Bloc {
  final _email = StreamController();
  final _password = StreamController();

  //Add the data to Stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //change the data of stream
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;
}
