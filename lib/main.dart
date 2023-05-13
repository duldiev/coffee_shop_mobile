import 'package:coffee_shop_mobile/app.dart';
import 'package:coffee_shop_mobile/core/helpers/bloc_observer.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  // getIt<SecureStorageService>().deleteAll();
  Bloc.observer = GlobalBlocObserver();
  runApp(App());
}
