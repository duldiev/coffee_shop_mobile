// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:coffee_shop_mobile/core/router/nav_router.dart' as _i5;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/auth_screen.dart'
    as _i1;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/sign_up_screen.dart'
    as _i3;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/welcome_screen.dart'
    as _i4;
import 'package:coffee_shop_mobile/features/home/presentation/home_screen.dart'
    as _i6;
import 'package:coffee_shop_mobile/features/notification/presentation/notification_screen.dart'
    as _i7;
import 'package:coffee_shop_mobile/features/profile/presentation/product_detail.dart'
    as _i9;
import 'package:coffee_shop_mobile/features/profile/presentation/profile_screen.dart'
    as _i8;
import 'package:coffee_shop_mobile/features/splash/splash_screen.dart' as _i2;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WelcomeScreen(),
      );
    },
    NavRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NavRouter(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
    ProductDetail.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProductDetail(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i10.PageRouteInfo<void> {
  const AuthRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeRoute extends _i10.PageRouteInfo<void> {
  const WelcomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NavRouter]
class NavRouter extends _i10.PageRouteInfo<void> {
  const NavRouter({List<_i10.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationScreen]
class NotificationRoute extends _i10.PageRouteInfo<void> {
  const NotificationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProductDetail]
class ProductDetail extends _i10.PageRouteInfo<void> {
  const ProductDetail({List<_i10.PageRouteInfo>? children})
      : super(
          ProductDetail.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetail';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
