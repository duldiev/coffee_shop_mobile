import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/widgets/big_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: "Inbox",
        hideBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(width: 0.1),
                ),
              ),
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(
                      Icons.coffee,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 8,
                    child: BigText(
                      text: "Your order is ready. Go and take it.",
                      size: 16,
                      color: Colors.black54,
                      maxLines: 10,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "1s",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
