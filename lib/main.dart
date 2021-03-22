import 'package:flutter/material.dart';
import 'package:phone_authentification/loginScreen.dart';
import 'loginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
