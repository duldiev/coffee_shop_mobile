import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class Modules {
  @lazySingleton
  Dio get client => Dio();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();
}
