import 'package:connect_doctor_at_home/signIn.dart';
import 'package:connect_doctor_at_home/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'welcome',
    routes: {
      'welcome': (context) => WelcomePage(),
      'login': (context) => LoginPage(),
    },
  ));
}
