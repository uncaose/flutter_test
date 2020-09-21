import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../my_scaffold.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
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
          onChanged: bloc.changeEmail,
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
          onChanged: bloc.changePassword,
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
        print('onPressed Submit');
      },
    );
  }
}
