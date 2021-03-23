import 'package:flutter/material.dart';
import 'package:phone_authentification/loginScreen.dart';
import 'loginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'loginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class WidgetFlutterBinding {}

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
