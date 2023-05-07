import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/widgets/clickable_item.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/coffee_background.jpg",
            ),
            fit: BoxFit.fitHeight,
            opacity: 0.1,
          ),
        ),
        child: Column(
          children: const [
            SizedBox(height: 30),
            ClickableItem(
              title: "Raiymbek Duldiyev",
              icon: Icons.person,
            ),
            SizedBox(height: 30),
            ClickableItem(
              title: "Current orders",
              icon: Icons.incomplete_circle,
            ),
            ClickableItem(
              title: "History",
              icon: Icons.list_alt,
            ),
            SizedBox(height: 30),
            ClickableItem(
              title: "Log out",
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
