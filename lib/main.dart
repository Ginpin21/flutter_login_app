import 'login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      theme: ThemeData(
        primarySwatch: Colors.green,
        inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(color: Colors.white),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            )),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
        textTheme: Typography.whiteCupertino,
      ),
      home: const LoginPage(),
    );
  }
}
