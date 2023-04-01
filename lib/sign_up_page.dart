import "package:flutter/material.dart";

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  @override
  State createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  // Variables to store the input data
  String email = "", password = "", confirmPassword = "";
  // Function to check if both the passwords match
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  bool validatePassword() {
    if (password == confirmPassword) {
      return true;
    } else {
      return false;
    }
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
                      "Sign Up",
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
                      onPressed: () => {},
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
