import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ClientModules {
  @lazySingleton
  BaseOptions get options => BaseOptions(
        baseUrl: URLs.baseUrl,
        responseType: ResponseType.json,
      );
}
