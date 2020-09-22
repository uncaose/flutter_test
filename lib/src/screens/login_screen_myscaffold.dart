import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../my_scaffold.dart';

class LoginScreenMyScaffold extends StatefulWidget {
  @override
  _LoginScreenMyScaffoldState createState() => _LoginScreenMyScaffoldState();
}

class _LoginScreenMyScaffoldState extends State<LoginScreenMyScaffold> {
  String email;
  String password;
  GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    // Multiple widgets GlobalKey Error
    return MyScaffold(
      key: _scaffoldKey,
      title: Text('Login'),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              fieldEmail(),
              fieldPassword(),
              _submit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldEmail() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (text) {
            email = text;
            bloc.changeEmail(text);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'useanem@domain.com',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget fieldPassword() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (text) {
            password = text;
            bloc.changePassword(text);
          },
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'over 3 charactor',
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget _submit() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        'Submit',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(content: Text('email: $email, password: $password')));
      },
    );
  }
}
