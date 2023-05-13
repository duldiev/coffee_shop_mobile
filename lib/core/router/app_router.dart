import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(
      page: NavRouter.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: ProductDetail.page),
    AutoRoute(page: CartRoute.page),
  ];
}
