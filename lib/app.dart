import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'core/router/app_router.dart';
import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>()
        ..add(
          const AuthCheckRequested(),
        ),
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp.router(
            title: 'Coffee Shop',
            theme: ThemeData(
              useMaterial3: true,
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: AppColors.background2,
            ),
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
