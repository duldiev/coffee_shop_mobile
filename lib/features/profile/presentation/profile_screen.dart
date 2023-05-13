import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:coffee_shop_mobile/widgets/clickable_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Profile',
        hideBackButton: true,
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
          children: [
            const SizedBox(height: 30),
            const SmalLine(),
            const ClickableItem(
              title: "Raiymbek Duldiyev",
              icon: Icons.person,
            ),
            const SmalLine(),
            const SizedBox(height: 30),
            const SmalLine(),
            ClickableItem(
              title: "Cart",
              icon: Icons.shopping_cart,
              onTap: () => context.router.push(
                const CartRoute(),
              ),
            ),
            const SmalLine(),
            const ClickableItem(
              title: "Current orders",
              icon: Icons.incomplete_circle,
            ),
            const SmalLine(),
            const ClickableItem(
              title: "History",
              icon: Icons.list_alt,
            ),
            const SmalLine(),
            const SizedBox(height: 30),
            const SmalLine(),
            ClickableItem(
              title: "Log out",
              icon: Icons.logout,
              onTap: () {
                context.read<AuthBloc>().add(
                      const SignedOut(),
                    );
                context.router.popUntilRoot();
                context.router.replace(const WelcomeRoute());
              },
            ),
            const SmalLine(),
          ],
        ),
      ),
    );
  }
}

class SmalLine extends StatelessWidget {
  const SmalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.8,
      height: 0,
    );
  }
}
