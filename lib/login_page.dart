import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  // Variables to store the input data
  String email = "", password = "";
  // Controllers for both the text fields
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  void login() {
    setState(() {
      email = emailController.text;
      password = passwordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.red, Colors.green])),
          padding: const EdgeInsets.all(40.0),
          // Column for containing all the form elements
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // Children are put in Containers to add padding
                Container(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const Text(
                      "Login",
                      textScaleFactor: 2.5,
                      style: TextStyle(shadows: [
                        Shadow(
                            color: Color.fromARGB(76, 0, 0, 0),
                            blurRadius: 5,
                            offset: Offset(2, 2))
                      ]),
                    )),
                // Container for email text field
                Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: "Enter the email address",
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder())),
                ),
                // Container for password text field
                Container(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                          hintText: "Enter the password",
                          suffixIcon: Icon(Icons.password),
                          border: OutlineInputBorder())),
                ),
                // Buttons are put in SizedBox to increase width
                // Forgot password button
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () => {},
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Color.fromARGB(76, 0, 0, 0),
                                    blurRadius: 5,
                                    offset: Offset(2, 2))
                              ],
                              color: Colors.green,
                              decoration: TextDecoration.underline),
                        ))),
                // Login button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: login,
                      child: const Text("Login"),
                    )),
                // Send to sign up button
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () => {},
                        child: const Text(
                          "No Account? Sign Up here",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Color.fromARGB(76, 0, 0, 0),
                                    blurRadius: 5,
                                    offset: Offset(2, 2))
                              ],
                              color: Colors.green,
                              decoration: TextDecoration.underline),
                        )))
              ])),
    );
  }
}
