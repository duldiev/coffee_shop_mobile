// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i14;

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:coffee_shop_mobile/core/router/nav_router.dart' as _i1;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/auth_screen.dart'
    as _i8;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/sign_up_screen.dart'
    as _i6;
import 'package:coffee_shop_mobile/features/auth/presentation/screens/welcome_screen.dart'
    as _i7;
import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart'
    as _i15;
import 'package:coffee_shop_mobile/features/home/presentation/screens/cart_screen.dart'
    as _i2;
import 'package:coffee_shop_mobile/features/home/presentation/screens/home_screen.dart'
    as _i4;
import 'package:coffee_shop_mobile/features/home/presentation/screens/order_screen.dart'
    as _i3;
import 'package:coffee_shop_mobile/features/notification/presentation/notification_screen.dart'
    as _i9;
import 'package:coffee_shop_mobile/features/profile/presentation/product_detail.dart'
    as _i10;
import 'package:coffee_shop_mobile/features/profile/presentation/profile_screen.dart'
    as _i11;
import 'package:coffee_shop_mobile/features/splash/splash_screen.dart' as _i5;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    NavRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NavRouter(),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CartScreen(
          key: args.key,
          callback: args.callback,
        ),
      );
    },
    OrderRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OrderScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.WelcomeScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.AuthScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationScreen(),
      );
    },
    ProductDetail.name: (routeData) {
      final args = routeData.argsAs<ProductDetailArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ProductDetail(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.NavRouter]
class NavRouter extends _i12.PageRouteInfo<void> {
  const NavRouter({List<_i12.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i12.PageRouteInfo<CartRouteArgs> {
  CartRoute({
    _i13.Key? key,
    _i14.Future<bool> Function()? callback,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            callback: callback,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i12.PageInfo<CartRouteArgs> page =
      _i12.PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    this.callback,
  });

  final _i13.Key? key;

  final _i14.Future<bool> Function()? callback;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, callback: $callback}';
  }
}

/// generated route for
/// [_i3.OrderScreen]
class OrderRoute extends _i12.PageRouteInfo<void> {
  const OrderRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.AuthScreen]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationScreen]
class NotificationRoute extends _i12.PageRouteInfo<void> {
  const NotificationRoute({List<_i12.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProductDetail]
class ProductDetail extends _i12.PageRouteInfo<ProductDetailArgs> {
  ProductDetail({
    _i13.Key? key,
    required _i15.ProductEntity product,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ProductDetail.name,
          args: ProductDetailArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetail';

  static const _i12.PageInfo<ProductDetailArgs> page =
      _i12.PageInfo<ProductDetailArgs>(name);
}

class ProductDetailArgs {
  const ProductDetailArgs({
    this.key,
    required this.product,
  });

  final _i13.Key? key;

  final _i15.ProductEntity product;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
