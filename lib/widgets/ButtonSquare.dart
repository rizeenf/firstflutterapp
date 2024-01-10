import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  const ButtonSquare(
      {super.key, required this.color, required this.text, required this.func});

  final Color color;
  final String text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: func,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, height: 3.2),
        ),
      ),
    );
  }
}
