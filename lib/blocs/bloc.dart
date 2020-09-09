import 'dart:async';

class Bloc {
  final emailController = StreamController();
  final passwordController = StreamController();

  //Add the data to Stream
  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;
  //this is going to add data into (stream) BLOC server
  //Function String means this function is going to accept String only

  //get the data from stream
  Stream<String> get email => emailController.stream;
  Stream<String> get password => passwordController.stream;
  //this is going to return the data which is present into BLoC (stream)
  /*
    actual code will be like this 
    bloc.email.listen(value){
      print(value)
    }
  */

}
