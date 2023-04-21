import 'package:coffee_shop_mobile/app.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(App());
}
