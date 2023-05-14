import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/common/widgets/failure_content/failure_content.dart';
import 'package:coffee_shop_mobile/common/widgets/loader/loader.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/button_with_icon.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/cart_product_entity.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
    this.callback,
  });

  final Future<bool> Function()? callback;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: callback,
      child: BlocProvider<CartBloc>(
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
              child: BlocConsumer<CartBloc, CartState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.when(
                    initial: () => Center(
                      child: SizedBox(
                        height: 60.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_shopping_cart_outlined,
                              size: 20.w,
                              color: AppColors.secondary,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'No Items',
                              style: TextStyleHelper.h4.copyWith(
                                color: AppColors.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    loadInProgress: () => const Loader(),
                    loaded: (list) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TopContent(
                            list: list.productList,
                          ),
                          BottomContent(
                            totalPrice: list.totalPrice,
                          ),
                        ],
                      );
                    },
                    loadInFailure: (message) => FailureContent(
                      message: message,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopContent extends StatelessWidget {
  const TopContent({
    super.key,
    required this.list,
  });

  final List<CartProductEntity> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list
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
                        style: TextStyleHelper.h5,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${product.amount} x \$${product.price}',
                        style: TextStyleHelper.h5,
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
  }
}

class BottomContent extends StatelessWidget {
  const BottomContent({
    super.key,
    required this.totalPrice,
  });

  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total cost:',
                style: TextStyleHelper.h4,
              ),
              Text(
                '\$$totalPrice',
                style: TextStyleHelper.h4,
              ),
            ],
          ),
        ),
        SizedBox(height: 2.h),
        ButtonWithIcon(
          width: double.maxFinite,
          height: 50,
          title: 'Checkout',
          icon: Icons.shopping_cart_checkout_rounded,
          onPressed: () {
            context.read<CartBloc>().add(
                  const Checkout(),
                );
            context.router.replace(const OrderRoute());
          },
        ),
      ],
    );
  }
}
