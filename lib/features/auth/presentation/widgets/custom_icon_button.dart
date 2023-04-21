import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double width;
  final double height;
  final void Function() onPressed;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  const CustomIconButton({
    Key? key,
    this.width = 40,
    this.height = 30,
    required this.onPressed,
    required this.backgroundColor,
    required this.icon,
    required this.iconColor,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
