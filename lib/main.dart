import 'package:chat/Design/log_in/login.dart';
import 'package:chat/Design/register/regiter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LogIn.routeName:(_)=>LogIn(),
        Register.routeName:(_)=>Register(),
      },
      initialRoute: Register.routeName,

    );
  }
}

