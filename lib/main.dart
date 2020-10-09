import 'package:flutter/material.dart';
import 'package:lol_stats/Auth/auth.dart';
import 'package:gradient_text/gradient_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lol Stats',
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Scaffold scaffold = Scaffold(
      backgroundColor: const Color(0xff132225),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GradientText(
                'Lol Stats',
                gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xff785a28),
                      Color(0xffdeca7b),
                      Color(0xff785a28)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: <double>[0.25, 0.5, 0.75]),
                style: const TextStyle(
                  fontFamily: 'Friz Quadrata',
                  fontSize: 80,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => Login()),
                        );
                      },
                      color: const Color(0xff132225),
                      textColor: const Color(0xffc89b3c),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Color(0xffc89b3c))),
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Friz Quadrata',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonTheme(
                    minWidth: 250,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) => Register()),
                        );
                      },
                      color: const Color(0xff132225),
                      textColor: const Color(0xffc89b3c),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Color(0xffc89b3c))),
                      child: const Text(
                        'CREATE ACCOUNT',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Friz Quadrata',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}
