import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/products_bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NavRouter extends StatelessWidget {
  const NavRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
          create: (_) => getIt<ProductsBloc>()..add(const GetList()),
        ),
      ],
      child: AutoTabsRouter(
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
              selectedLabelStyle: TextStyleHelper.h7,
              unselectedLabelStyle: TextStyleHelper.h7,
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
      ),
    );
  }
}
