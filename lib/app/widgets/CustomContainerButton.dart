import 'package:flutter/material.dart';

class CustomContainerButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textColor;

  const CustomContainerButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.color = Colors.blueAccent,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              // color: color.withOpacity(0.5),
              // offset: const Offset(0, 4),
              // blurRadius: 8,
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo"
          ),
        ),
      ),
    );
  }
}
