import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  @lazySingleton
  FlutterSecureStorage get storage => FlutterSecureStorage(
        aOptions: _getAndroidOptions(),
      );
}
