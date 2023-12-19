import 'package:chat_app/components/my_text_fields.dart';
import 'package:chat_app/pages/my_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 196, 108),
      //logo
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Icon(
                    Icons.message,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  //welcome text
                  const Text(
                    "Welcome Dude! You've been missed😊",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //email
                  MyTextField(
                      controller: emailController,
                      obsecureText: false,
                      hintText: 'Email'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //password
                  MyTextField(
                      controller: passwordController,
                      obsecureText: true,
                      hintText: 'Password'),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //sign in button
                  MyButton(
                      onTap: () {
                        print("Button Pressed");
                      },
                      text: "Sign In"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not yet Registered? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      Text(
                        "Register Now",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
