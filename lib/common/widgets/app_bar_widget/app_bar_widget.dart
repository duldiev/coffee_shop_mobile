import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.onBack,
    required this.hideBackButton,
  });

  final String title;

  final VoidCallback? onBack;
  final bool hideBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColors.background2,
      titleTextStyle: TextStyleHelper.h4.copyWith(
        color: AppColors.main,
        fontSize: 18,
      ),
      leading: !hideBackButton
          ? IconButton(
              onPressed: onBack,
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            )
          : const SizedBox(),
      centerTitle: true,
      scrolledUnderElevation: 0.5,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
