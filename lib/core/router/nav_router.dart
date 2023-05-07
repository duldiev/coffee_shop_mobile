import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavRouter extends StatelessWidget {
  const NavRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        NotificationRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Notification',
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }
}
