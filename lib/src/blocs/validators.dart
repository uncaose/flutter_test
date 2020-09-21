import 'dart:async';

class Validators {
  final validatorEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });
  final validatorPassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String passwd, sink) {
    if (passwd.length >= 3) {
      sink.add(passwd);
    } else {
      sink.addError('password must be at leat 3 characters');
    }
  });
}
