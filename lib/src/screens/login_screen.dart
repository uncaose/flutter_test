import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  var email = '';
  var password = '';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              fieldEmail(),
              fieldPassword(),
              SizedBox(height: 20),
              _submit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.email),
        labelText: 'Email',
        hintText: 'usename@domain.com',
      ),
      onSaved: (String value) {
        this.widget.email = value;
      },
      validator: validateEmail,
    );
  }

  Widget fieldPassword() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.security),
        labelText: 'Password',
        hintText: '3 over charactor',
      ),
      onSaved: (String value) {
        this.widget.password = value;
      },
      validator: validatePassword,
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
        if (!formKey.currentState.validate()) return false;
        formKey.currentState.save();
        formKey.currentState.reset();
        print("email: ${this.widget.email}");
        print("password: ${this.widget.password}");
      },
    );
  }
}
