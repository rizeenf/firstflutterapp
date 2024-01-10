import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/view/home-data-perusahaan.dart';

class MVC extends StatefulWidget {
  const MVC({super.key});

  @override
  State<MVC> createState() => _MVCState();
}

class _MVCState extends State<MVC> {
  int input1 = 0;
  int input2 = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aw"), backgroundColor: Colors.red),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 50,
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "0",
                    hintStyle: TextStyle(color: Colors.grey)),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      input1 = 0;
                    } else {
                      input1 = int.parse(value);
                      print(input1);
                    }
                    total = input1 + input2;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 50,
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "0",
                    hintStyle: TextStyle(color: Colors.grey)),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      input2 = 0;
                    } else {
                      input2 = int.parse(value);
                      print(input2);
                    }
                    total = input1 + input2;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$input1 + $input2 = $total',
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(const HomeDataPerusahaan());
                },
                child: const Text("NGANAN")),
          ],
        ),
      )),
    );
  }
}
