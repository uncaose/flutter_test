import 'package:flutter/material.dart';
import '../blocs/bloc_rxdart.dart';
import '../my_scaffold.dart';

class LoginScreenRxdart extends StatefulWidget {
  @override
  _LoginScreenRxdartState createState() => _LoginScreenRxdartState();
}

class _LoginScreenRxdartState extends State<LoginScreenRxdart> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text('Login BehaviorSubject'),
      body: Builder(builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: <Widget>[
                fieldEmail(),
                fieldPassword(),
                _submit(context),
              ],
            ),
          ),
        );
      }),
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

  Widget _submit(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        'Submit',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('${bloc.getEmail}, ${bloc.getPassword}')));
      },
    );
  }
}
