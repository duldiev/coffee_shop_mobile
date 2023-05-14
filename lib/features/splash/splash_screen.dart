import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/widgets/loader/loader.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/presentation/blocs/auth_bloc/auth_bloc.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () => context.router.replace(
            const WelcomeRoute(),
          ),
          authenticated: () => context.router.replace(
            const NavRouter(),
          ),
          unauthenticated: () => context.router.replace(
            const WelcomeRoute(),
          ),
        );
      },
      child: const Scaffold(
        body: Loader(),
      ),
    );
  }
}
