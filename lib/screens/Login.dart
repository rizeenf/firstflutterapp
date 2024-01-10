// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:myapp/widgets/ButtonLogo.dart';
import 'package:myapp/widgets/ButtonSquare.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color.fromARGB(255, 158, 210, 235),
                  // Color.fromARGB(255, 255, 243, 243),
                  Color.fromARGB(255, 255, 243, 243)
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Sign In to recharge Direct",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 50,
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        hintMaxLines: 1,
                        enabledBorder: InputBorder.none,
                        suffixIcon:
                            Icon(Icons.check_circle_outline_outlined, size: 18),
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(18),
                          enabledBorder: InputBorder.none,
                          suffixIcon:
                              Icon(Icons.remove_red_eye_outlined, size: 18),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Recover Password ?",
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonSquare(
                      color: Colors.indigo,
                      text: "Sign In",
                      func: () => print("Aw")),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Or continue with ",
                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonLogo(
                          color: Colors.white,
                          func: () => print("Google"),
                          image: ('assets/images/google.png')),
                      ButtonLogo(
                          color: Colors.white,
                          func: () => print("Appleh"),
                          image: ('assets/images/apple.png')),
                      ButtonLogo(
                          color: Colors.white,
                          func: () => print("Facebook"),
                          image: ('assets/images/facebook.png')),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text.rich(TextSpan(children: [
                    TextSpan(text: "Don't have account ?\n"),
                    TextSpan(text: "you can "),
                    TextSpan(
                        text: "Register here!",
                        style: const TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold)),
                  ], style: TextStyle(fontSize: 16))),
                ],
              ),
            ),
          ),
        ));
  }
}
