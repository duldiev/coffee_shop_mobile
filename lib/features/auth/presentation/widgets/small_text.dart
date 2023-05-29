import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final double height;
  final int maxLines;
  final TextOverflow? overflow;

  const SmallText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 0,
    this.height = 1.2,
    this.overflow,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        overflow: overflow,
        maxLines: maxLines,
        style: TextStyle(
          color: color,
          fontSize: size == 0 ? 12 : size,
          height: height,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
