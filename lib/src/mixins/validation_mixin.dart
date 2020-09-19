class ValidationMixin {
  String validateEmail(String value){
    return value.contains('@') ? null : 'requried email address';
  }

  String validatePassword(String value) {
    return value.length >= 3 ? null : 'over 3 Caaractor';
  }
}