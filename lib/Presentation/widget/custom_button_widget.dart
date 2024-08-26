import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function() onTap;
  final double borderRadius;
  final String text;
  final Color color;
  final Color? textColor;
  final double height;
  final double width;
  const CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.borderRadius,
    required this.text,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    required this.height,
    required this.width,
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
          height: 40.0,
          width: double.infinity,
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
