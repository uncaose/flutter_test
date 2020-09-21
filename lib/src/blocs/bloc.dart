import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>();
  final _passwd = StreamController<String>();
  Stream<String> get email => _email.stream.transform(validatorEmail);
  Stream<String> get password => _passwd.stream.transform(validatorPassword);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _passwd.sink.add;

  dispose() {
    _email.close();
    _passwd.close();
  }
}

final bloc = Bloc();
