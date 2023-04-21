import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/button_with_icon.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'WelcomeRoute')
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 140),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Coffee",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonWithIcon(
                    onPressed: () {},
                    width: double.maxFinite,
                    height: 50,
                    title: "Login",
                    icon: Icons.login,
                    elevation: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWithIcon(
                    onPressed: () {},
                    width: double.maxFinite,
                    height: 50,
                    title: "Sign up",
                    icon: Icons.logout_outlined,
                    elevation: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
