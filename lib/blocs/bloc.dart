import 'dart:async';

class Bloc {
  final _emailController = StreamController();
  final _passwordController = StreamController();

  //Add the data to Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  //this is going to add data into (stream) BLOC server
  //Function String means this function is going to accept String only

  //get the data from stream
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
  //this is going to return the data which is present into BLoC (stream)
  /*
    actual code will be like this 
    bloc.email.listen(value){
      print(value)
    }
  */

}
