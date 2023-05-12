import 'package:connect_doctor_at_home/covid.dart';
import 'package:connect_doctor_at_home/home.dart';
import 'package:connect_doctor_at_home/brain.dart';
import 'package:connect_doctor_at_home/lung.dart';
import 'package:connect_doctor_at_home/signIn.dart';
import 'package:connect_doctor_at_home/sign_up.dart';
import 'package:connect_doctor_at_home/skin.dart';
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
      'signUp': (context) => SignUpPage(),
      'home': (context) => MyHomePage(),
      'brain': (context) => Brain(),
      'covid': (context) => Covid(),
      'skin': (context) => Skin(),
      'lung': (context) => Lung(),
    },
  ));
}
