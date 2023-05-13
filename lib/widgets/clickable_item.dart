import 'package:flutter/material.dart';
import 'big_text.dart';

class ClickableItem extends StatelessWidget {
  const ClickableItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          top: 14,
          bottom: 14,
          left: 10,
          right: 10,
        ),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      icon,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: BigText(
                      text: title,
                      size: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
