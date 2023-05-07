import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/widgets/big_text.dart';
import 'package:coffee_shop_mobile/widgets/custom_icon_button.dart';
import 'package:coffee_shop_mobile/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String description =
      "Лавандовый раф - это нежный кофейный напиток с мягким сливочным вкусом с добавлением фруктово-ягодного экстракта (эссенции), который не содержит в себе сахара, а является природным подсластителем со вкусом лаванды. Лавандовые нотки придают ему особый неповторимый вкус! Также в нашем ассортименте есть большой выбор растительного молока, который мы можем заменить по вашему пожеланию.";
  String title = "Лавандовый раф 360 мл";

  double _collapsedHeight = 100;

  @override
  void initState() {
    super.initState();
    if (title.length > 25) {
      _collapsedHeight = 140;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: _collapsedHeight,
            expandedHeight: 350,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: const [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
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
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: BigText(
                    text: title,
                    size: 26,
                    maxLines: 2,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              padding: const EdgeInsets.only(top: 30),
              child: FlexibleSpaceBar(
                background: Image.network(
                  "https://cachizer1.2gis.com/market/5e3a84f2-57fb-4b8b-abf0-93cfd0841c63.png?w=1088",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 20,
                    ),
                    child: ExpandableText(
                      text: description + description,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: const [
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
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
      bottomNavigationBar: Column(
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
              color: Colors.white,
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
                      onTap: () {},
                      child: const Icon(
                        Icons.remove_circle_outline_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const BigText(
                      text: "2",
                      size: 22,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {},
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
                  onPressed: () {},
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
      ),
    );
  }
}
