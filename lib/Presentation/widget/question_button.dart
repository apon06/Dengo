import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final Function() onTap;
  final double borderRadius;
  final String text;
  final Color color;
  final Color? textColor;
  const QuestionButton({
    super.key,
    required this.onTap,
    required this.borderRadius,
    required this.text,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: SizedBox(
          height: 50.0,
          width: 100,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
