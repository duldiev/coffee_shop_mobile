import 'package:flutter/material.dart';

import 'big_text.dart';

class ClickableItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const ClickableItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(horizontal: BorderSide(width: 0.1)),
      ),
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
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
