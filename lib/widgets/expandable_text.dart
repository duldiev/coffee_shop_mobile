import 'package:coffee_shop_mobile/core/extensions/sized_context.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final Color color;

  const ExpandableText({
    Key? key,
    required this.text,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = 800 / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
      hiddenText = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: 16,
              maxLines: 40,
              color: widget.color,
            )
          : _showExpandableTextWithButton(),
    );
  }

  Widget _showExpandableTextWithButton() {
    return Column(
      children: [
        SmallText(
          text: hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
          size: 16,
          height: 1.8,
          color: widget.color,
          maxLines: 40,
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            setState(() {
              hiddenText = !hiddenText;
            });
          },
          child: Row(
            children: [
              SmallText(
                text: hiddenText ? "Show more" : "Show less",
                color: Colors.grey,
                size: 12,
              ),
              Icon(
                hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                color: Colors.grey,
                size: 14,
              ),
            ],
          ),
        )
      ],
    );
  }
}
