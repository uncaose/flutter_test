import 'package:flutter/material.dart';

import 'screens/welcome.dart';
import 'screens/hello.dart';
import 'screens/number.dart';
import 'screens/login_screen.dart';
import 'screens/login_screen_rxdart.dart';
import 'screens/login_screen_myscaffold.dart';

final routes = {
  '/': (BuildContext context) => Welcome(),
  '/login': (BuildContext context) => LoginScreen(),
  '/login_rxdart': (BuildContext context) => LoginScreenRxdart(),
  '/login_myscaffold': (BuildContext context) => LoginScreenMyScaffold(),
  '/hello': (BuildContext context) => Hello(),
  '/number': (BuildContext context) => Number(),
};
