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
        colorScheme:
            const ColorScheme.light(primary: Color.fromARGB(255, 10, 54, 150)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shadowColor: const MaterialStatePropertyAll(
                    Color.fromARGB(120, 120, 120, 120)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))))),
        inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color.fromARGB(255, 10, 54, 150),
              width: 2.0,
            )),
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 50, 50, 50)))),
      ),
      home: const LoginPage(),
    );
  }
}
