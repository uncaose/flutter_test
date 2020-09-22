import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({key, Widget child}) : super(key: key, child: child);
  // @override
  // bool updateShuldNotify(_) => true;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  /*
  { 
    // TODO: implement updateShouldNotify throw UnimplementedError(); 
    }
  */
  static Bloc of(BuildContext context) {
    // ignore: deprecated_member_use
    // return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
    // https://stackoverflow.com/a/59304297
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
