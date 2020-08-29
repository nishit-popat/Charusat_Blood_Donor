import 'package:flutter/material.dart';
import 'package:registration_and_log_in/loginscreen.dart';
import 'package:registration_and_log_in/registration_form.dart';
import 'form_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0XFFFF4D4D),
        accentColor: Colors.redAccent,
        fontFamily: 'Roboto-Black',
      ),
      home: LoginScreen(),
    );
  }
}

