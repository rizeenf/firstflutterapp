import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondStateful extends StatefulWidget {
  const SecondStateful({super.key});

  @override
  State<SecondStateful> createState() => _SecondStatefulState();
}

class _SecondStatefulState extends State<SecondStateful> {
  String tititle = 'kembali';

  @override
  void initState() {
    tititle = 'kekiri';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.indigo,
            height: 200.h,
            width: 200.w,
            child: Text("AAAAAAAAA", style: TextStyle(fontSize: 20.sp)),
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("AW"))
        ],
      ),
    );
  }
}
