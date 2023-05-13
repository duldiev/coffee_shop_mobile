import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';

class FailureContent extends StatelessWidget {
  const FailureContent({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyleHelper.h5.copyWith(
          color: AppColors.secondary,
        ),
      ),
    );
  }
}
