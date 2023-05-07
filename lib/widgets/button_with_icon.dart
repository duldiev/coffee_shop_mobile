import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final void Function() onPressed;
  final double width;
  final double height;
  final String title;
  final IconData icon;
  final double iconSize;
  final bool elevation;

  const ButtonWithIcon({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.icon,
    this.iconSize = 30,
    this.elevation = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(
          top: 5,
          bottom: 5,
          left: 20,
          right: 20,
        )),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevation: elevation
            ? MaterialStateProperty.all<double>(20)
            : MaterialStateProperty.all<double>(0),
        fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
      ),
      child: Expanded(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Icon(
                icon,
                size: iconSize,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
