import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/big_text.dart';
import 'package:coffee_shop_mobile/widgets/search_bar.dart';
import 'package:coffee_shop_mobile/widgets/small_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var description =
      "Лавандовый раф - это нежный кофейный напиток с мягким сливочным вкусом с добавлением фруктово-ягодного экстракта (эссенции), который не содержит в себе сахара, а является природным подсластителем со вкусом лаванды. Лавандовые нотки придают ему особый неповторимый вкус! Также в нашем ассортименте есть большой выбор растительного молока, который мы можем заменить по вашему пожеланию.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee"),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        scrolledUnderElevation: 0,
        elevation: 0.4,
      ),
      body: Container(
        clipBehavior: Clip.none,
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: const SearchBar(),
              ),
              const SizedBox(height: 30),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) => _buildListItem(index),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return GestureDetector(
      onTap: () => context.router.push(const ProductDetail()),
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
              child: Image.network(
                "https://cachizer1.2gis.com/market/5e3a84f2-57fb-4b8b-abf0-93cfd0841c63.png?w=1088",
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
                    const BigText(text: "Latte"),
                    const SizedBox(
                      height: 10,
                    ),
                    SmallText(
                      text: description,
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
                      child: const Text(
                        "950T",
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
