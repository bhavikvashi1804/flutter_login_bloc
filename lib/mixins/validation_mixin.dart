class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please Enter a valid Email Address';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be atleast 4 char long';
    }
    return null;
  }
}
