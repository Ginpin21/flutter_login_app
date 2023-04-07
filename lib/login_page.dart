import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

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
        backgroundColor: const Color.fromARGB(255, 10, 54, 150),
        // SingleChildScrollView to avoid bottom overflow when keyboard is pulled up
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          // ConstrainedBox to have max height same as device height
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: [
                // Stack is used to stack the logo and the bg image
                Stack(
                  children: const [
                    Image(
                        height: 300,
                        image: AssetImage("assets\\images\\Dubai.jpg"),
                        fit: BoxFit.fill,
                        opacity: AlwaysStoppedAnimation(0.5)),
                    Image(
                        height: 300,
                        image: AssetImage("assets\\images\\ViewIt_Logo_2.png"))
                  ],
                ),
                // Container wrapped in expanded to fill remaining space with it
                Expanded(
                  child: Form(
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      // BoxDecoration to make bg color white and give rounded corners to the form
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(202, 10, 54, 150)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 40, 40)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.check)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 40, 40)),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (change) => {},
                                    ),
                                    const Text("Remember Me",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 40, 40, 40)))
                                  ],
                                ),
                                TextButton(
                                    onPressed: () => {},
                                    child: const Text("Forgot Password?"))
                              ],
                            ),
                          ),
                          // ElevatedButton in SizedBox to change its width to be max
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                                onPressed: () => {},
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              "Or Login with",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 40, 40, 40)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: () => {},
                                  style: const ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color.fromARGB(255, 2, 129, 42))),
                                  child: const Icon(FontAwesome5.google)),
                              ElevatedButton(
                                  onPressed: () => {},
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<
                                              Color>(
                                          Color.fromARGB(255, 24, 119, 242))),
                                  child: const Icon(FontAwesome5.facebook_f)),
                              ElevatedButton(
                                  onPressed: () => {},
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<
                                              Color>(
                                          Color.fromARGB(255, 29, 155, 240))),
                                  child: const Icon(FontAwesome5.twitter)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
