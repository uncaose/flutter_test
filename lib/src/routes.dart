import 'package:flutter/material.dart';

import 'screens/welcome.dart';
import 'screens/hello.dart';
import 'screens/number.dart';

final routes = {
  '/': (BuildContext context) => Welcome(),
  '/hello': (BuildContext context) => Hello(),
  '/number': (BuildContext context) => Number(),
};
