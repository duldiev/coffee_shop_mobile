import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/common/widgets/failure_content/failure_content.dart';
import 'package:coffee_shop_mobile/common/widgets/loader/loader.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
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
        body: const Content(),
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
    return SingleChildScrollView(
      padding: EdgeInsets.all(4.w),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loadInProgress: () => const Loader(),
            loaded: (list) {
              log(list.productList.length.toString());
              return Column(
                children: list.productList
                    .map(
                      (product) => Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2.h,
                          horizontal: 4.w,
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
                            Text(
                              '${product.amount}',
                              style: TextStyleHelper.h6,
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
      ),
    );
  }
}
