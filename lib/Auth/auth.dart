import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ID',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelStyle: TextStyle(color: Color(0xffc89b3c)),
                ),
                style: const TextStyle(color: Color(0xffc89b3c)),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelStyle: TextStyle(color: Color(0xffc89b3c)),
                ),
                style: const TextStyle(color: Color(0xffc89b3c)),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ButtonTheme(
              minWidth: 250,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        const SnackBar(content: Text('Logged in')));
                  }
                },
                color: const Color(0xff132225),
                textColor: const Color(0xffc89b3c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Color(0xffc89b3c))),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Friz Quadrata',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Scaffold scaffold = Scaffold(
      backgroundColor: const Color(0xff132225),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Sign in',
                style: TextStyle(
                    fontFamily: 'Friz Quadrata',
                    fontSize: 50,
                    color: Color(0xffc89b3c)),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ID',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelStyle: TextStyle(color: Color(0xffc89b3c)),
                ),
                style: const TextStyle(color: Color(0xffc89b3c)),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter an ID';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelStyle: TextStyle(color: Color(0xffc89b3c)),
                ),
                style: const TextStyle(color: Color(0xffc89b3c)),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffc89b3c)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelStyle: TextStyle(color: Color(0xffc89b3c)),
                ),
                style: const TextStyle(color: Color(0xffc89b3c)),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ButtonTheme(
              minWidth: 250,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')));
                  }
                },
                color: const Color(0xff132225),
                textColor: const Color(0xffc89b3c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Color(0xffc89b3c))),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Friz Quadrata',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Scaffold scaffold = Scaffold(
      backgroundColor: const Color(0xff132225),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Register',
                  style: TextStyle(
                      fontFamily: 'Friz Quadrata',
                      fontSize: 50,
                      color: Color(0xffc89b3c)),
                ),
                RegisterForm()
              ],
            ),
          ),
        ),
      ),
    );
    return scaffold;
  }
}
