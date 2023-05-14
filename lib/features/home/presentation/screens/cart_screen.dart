import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/common/widgets/failure_content/failure_content.dart';
import 'package:coffee_shop_mobile/common/widgets/loader/loader.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/button_with_icon.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => getIt<CartBloc>()..add(const GetCart()),
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Cart',
          hideBackButton: false,
          onBack: () => context.router.pop(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(4.w),
          child: SizedBox(
            height: 80.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Content(),
                ButtonWithIcon(
                  width: double.maxFinite,
                  height: 50,
                  title: 'Checkout',
                  icon: Icons.shopping_cart_checkout_rounded,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loadInProgress: () => const Loader(),
          loaded: (list) {
            return Column(
              children: list.productList
                  .map(
                    (product) => Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 2.h,
                        horizontal: 4.w,
                      ),
                      margin: EdgeInsets.only(bottom: 1.2.h),
                      decoration: BoxDecoration(
                        color: AppColors.warning,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Image.file(File('')),
                              Text(
                                product.name,
                                style: TextStyleHelper.h6,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${product.amount} x \$${product.price}',
                                style: TextStyleHelper.h6,
                              ),
                              SizedBox(width: 2.w),
                              InkWell(
                                onTap: () => context.read<CartBloc>().add(
                                      RemoveItem(product.id),
                                    ),
                                child: Icon(
                                  Icons.delete_forever,
                                  color: AppColors.danger,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
          },
          loadInFailure: (message) => FailureContent(
            message: message,
          ),
        );
      },
    );
  }
}
