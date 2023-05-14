import 'package:coffee_shop_mobile/core/helpers/storage_keys.dart';
import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:coffee_shop_mobile/core/services/secure_storage_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  ApiClient(this.client, this.storage) {
    updateBaseOptions();
    updateLogs();
  }

  final Dio client;
  final SecureStorageService storage;

  updateBaseOptions() async {
    final token = await storage.read(StorageKeys.token);
    client.options = BaseOptions(
      baseUrl: URLs.baseUrl,
      responseType: ResponseType.json,
      headers: {"Authorization": 'Bearer ${token.getOrElse(() => 'NULL')}'},
    );
  }

  updateLogs() {
    client.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: _logEvent,
      ),
    );
  }

  _logEvent(Object? object) {
    var pattern = RegExp('.{1,800}');
    pattern
        .allMatches(object.toString())
        // ignore: avoid_print
        .forEach((match) => print(match.group(0)));
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
  }) =>
      client.get(
        url,
        queryParameters: params,
        cancelToken: cancelToken,
        options: options,
      );

  Future<Response> post(
    String url, {
    dynamic body,
    dynamic parametres,
    Options? options,
  }) =>
      client.post(
        url,
        data: body,
        queryParameters: parametres,
        options: options,
      );

  Future<Response> put(
    String url, {
    dynamic body,
    Options? options,
  }) =>
      client.put(
        url,
        data: body,
        options: options,
      );

  Future<Response> delete(
    String url, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? params,
  }) =>
      client.delete(
        url,
        data: body,
        options: options,
        queryParameters: params,
      );

  Future<Response> patch(
    String url, {
    dynamic body,
    Options? options,
    Function(int, int)? onSendProgress,
  }) =>
      client.patch(
        url,
        data: body,
        options: options,
        onSendProgress: onSendProgress,
      );
}
