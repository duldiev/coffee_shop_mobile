import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/core/helpers/get_image.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/big_text.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/products_bloc/products_bloc.dart';
import 'package:coffee_shop_mobile/widgets/search_bar.dart';
import 'package:coffee_shop_mobile/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Coffee',
        hideBackButton: true,
      ),
      body: Container(
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: const CustomSearchBar(),
              ),
              const SizedBox(height: 30),
              BlocBuilder<ProductsBloc, ProductsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loadInProgress: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (list) => ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) => _buildListItem(
                        list[index],
                        context,
                      ),
                    ),
                    loadInFailure: (message) => Center(
                      child: Text(message),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(ProductEntity product, BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(
        ProductDetail(
          product: product,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.file(
                File(GetImage.get(product.image)),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(text: product.name),
                    const SizedBox(
                      height: 10,
                    ),
                    SmallText(
                      text: product.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 2,
                        bottom: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '\$${product.price}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
