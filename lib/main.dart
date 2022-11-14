import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todoflutter/pages/home.dart';
import 'package:todoflutter/pages/main_screen.dart';

void initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
void main() {
  initFirebase();
  runApp(MaterialApp(

    theme: ThemeData(
        primaryColor: Colors.amber
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
      '/todoflutter': (context) => Home(),
    },
  ));
}