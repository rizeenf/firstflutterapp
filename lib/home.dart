import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Hello Again!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text(
              "Welcome Back You've been missed",
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue[50],
              ),
              height: 50,
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue[50],
              ),
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, height: 4),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Or",
              style: TextStyle(color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                border: const Border(
                  bottom: BorderSide(width: 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Icon(Icons.ads_click_rounded, color: Colors.blue),
                  SizedBox(
                    width: 70,
                  ),
                  Text("Login with Google")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                border: const Border(
                  bottom: BorderSide(width: 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Icon(Icons.add_chart, color: Colors.red),
                  SizedBox(
                    width: 70,
                  ),
                  Text("Login with Facebook")
                ],
              ),
            ),
            ReusableButton(
              color: Colors.red,
              text: "Aw",
              func: () {
                print("Apa");
              },
            ),
            ReusableButton(
              color: Colors.red,
              text: "Banteng",
              func: () {
                print("Apa tau");
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class ReusableButton extends StatelessWidget {
  const ReusableButton(
      {super.key, required this.color, required this.text, required this.func});

  final Color color;
  final String text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: func,
      child: Center(
        child: Container(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white, height: 4),
        )),
      ),
    );
  }
}
