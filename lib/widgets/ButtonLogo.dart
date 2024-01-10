import 'package:flutter/material.dart';

class ButtonLogo extends StatelessWidget {
  const ButtonLogo(
      {super.key,
      required this.color,
      required this.func,
      required this.image});

  final Color color;
  final String image;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 6,
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: func,
      child: Center(
        child: Image(image: AssetImage(image), height: 26),
      ),
    );
  }
}
