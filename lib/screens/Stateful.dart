import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/SecondStateful.dart';

class Statte extends StatefulWidget {
  const Statte({super.key});

  @override
  State<Statte> createState() => _StatteState();
}

class _StatteState extends State<Statte> {
  String ganteng = "aku ganteng";
  Color warna = Colors.amber;
  bool isTrue = true;

  Widget ovalOrSquare() {
    if (isTrue) {
      return Container(
        height: 100,
        width: 100,
        color: Colors.amber,
      );
    } else {
      return ClipOval(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.lightBlue,
        ),
      );
    }

    // isTrue
    //     ? Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.amber,
    //       )
    //     : ClipOval(
    //         child: Container(
    //           height: 100,
    //           width: 100,
    //           color: Colors.lightBlue,
    //         ),
    //       );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ovalOrSquare(),
            Container(
              height: 100,
              width: double.infinity,
              color: warna,
            ),
            const Text(
              "Hello Mom!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text(
              ganteng,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
                onPressed: () {
                  ganteng = "aku ganteng banget";
                  warna = isTrue ? Colors.amber : Colors.teal;
                  isTrue = !isTrue;
                  setState(() {});
                },
                child: const Text("Klik kalo kmu ganteng banget")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SecondStateful());
                },
                child: const Text("NGANAN")),
          ],
        ),
      ),
    ));
  }
}
