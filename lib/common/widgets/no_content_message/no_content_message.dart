import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../helpers/text_style_helper.dart';

class NoContentMessage extends StatelessWidget {
  const NoContentMessage({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.w,
              color: AppColors.secondary,
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyleHelper.h4.copyWith(
                color: AppColors.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
