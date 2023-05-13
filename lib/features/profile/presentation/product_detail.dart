import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/core/helpers/get_image.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/cart_bloc/cart_bloc.dart';
import 'package:coffee_shop_mobile/widgets/big_text.dart';
import 'package:coffee_shop_mobile/widgets/custom_icon_button.dart';
import 'package:coffee_shop_mobile/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;

@RoutePage()
class ProductDetail extends StatefulWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductEntity product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  double _collapsedHeight = 100;

  @override
  void initState() {
    super.initState();
    if (widget.product.name.length > 25) {
      _collapsedHeight = 140;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(const GetCart()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              collapsedHeight: _collapsedHeight,
              expandedHeight: 240,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => context.router.pop(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  const CartBadgeIcon()
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.background2,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    child: BigText(
                      text: widget.product.name,
                      size: 26,
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.warning,
              flexibleSpace: Container(
                padding: const EdgeInsets.only(top: 30, left: 100),
                child: FlexibleSpaceBar(
                  background: Image.file(
                    File(GetImage.get(widget.product.image)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(bottom: 30),
                color: AppColors.background2,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 20,
                      ),
                      color: AppColors.background2,
                      child: ExpandableText(
                        text: widget.product.description,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      color: AppColors.background2,
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.emoji_emotions_rounded,
                                size: 24,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Very good, 8.2",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse,
                                size: 24,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "15 min",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BlocProvider<AddToCartBloc>(
          create: (context) => getIt<AddToCartBloc>(),
          child: BottomNavContent(
            productId: widget.product.id,
          ),
        ),
      ),
    );
  }
}

class CartBadgeIcon extends StatefulWidget {
  const CartBadgeIcon({
    super.key,
  });

  @override
  State<CartBadgeIcon> createState() => _CartBadgeIconState();
}

class _CartBadgeIconState extends State<CartBadgeIcon> {
  int cartLength = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        if (state is Loaded && state.cart.productList.isNotEmpty) {
          setState(() {
            cartLength = 0;
            for (var i = 0; i < state.cart.productList.length; i++) {
              cartLength += state.cart.productList[i].amount;
            }
          });
        }
      },
      builder: (context, state) {
        return state is Loaded && state.cart.productList.isNotEmpty
            ? GestureDetector(
                onTap: () => context.router.push(
                  const CartRoute(),
                ),
                child: badges.Badge(
                  badgeContent: Text(
                    '$cartLength',
                    style: TextStyleHelper.main.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                ),
              )
            : GestureDetector(
                onTap: () => context.router.push(
                  const CartRoute(),
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
              );
      },
    );
  }
}

class BottomNavContent extends StatelessWidget {
  const BottomNavContent({
    super.key,
    required this.productId,
  });

  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddToCartBloc, AddToCartState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.background2,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => context
                            .read<AddToCartBloc>()
                            .add(const DecreaseCount()),
                        child: const Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 15),
                      BigText(
                        text: '${state.count}',
                        size: 22,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () => context
                            .read<AddToCartBloc>()
                            .add(const IncreaseCount()),
                        child: const Icon(
                          Icons.add_circle_outline_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  CustomIconButton(
                    onPressed: () {
                      context.read<AddToCartBloc>().add(
                            AddToCart(productId),
                          );
                      context.read<CartBloc>().add(const GetCart());
                    },
                    height: 50,
                    width: 50,
                    backgroundColor: Colors.black,
                    icon: Icons.add_shopping_cart_outlined,
                    iconColor: Colors.white,
                    iconSize: 18,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        );
      },
    );
  }
}
