class Validate {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Enter a valid Email please';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return 'Your password must be at least eight characters';
    }
    return null;
  }
}
