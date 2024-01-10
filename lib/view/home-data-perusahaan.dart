import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/view/form-anggota.dart';

class HomeDataPerusahaan extends StatefulWidget {
  const HomeDataPerusahaan({super.key});

  @override
  State<HomeDataPerusahaan> createState() => _HomeDataPerusahaanState();
}

class _HomeDataPerusahaanState extends State<HomeDataPerusahaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Data Perusahaan",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tambah Anggota"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Icon(Icons.keyboard_arrow_right_outlined),
                  onPressed: () {
                    Get.to(const FormAnggota());
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("List Daftar Anggota"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Icon(Icons.keyboard_arrow_right_outlined),
                  onPressed: () {
                    Get.to(const FormAnggota());
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
