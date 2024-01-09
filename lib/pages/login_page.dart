import 'package:chat_app/components/my_text_fields.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signIn() async {
    //get the auth
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.signInwithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString()),),);
    }
    
  }

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
                  MyButton(onTap: signIn, text: "Sign In"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Not yet Registered? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Register Now",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
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
