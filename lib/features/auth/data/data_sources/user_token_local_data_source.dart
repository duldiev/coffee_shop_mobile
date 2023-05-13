import 'package:coffee_shop_mobile/core/helpers/storage_keys.dart';
import 'package:coffee_shop_mobile/core/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

abstract class IUserTokenLocalDataSource {
  Future<void> saveUserToken(String data);
  Future<void> clearAll();
  Future<bool> isTokenSaved();
}

@LazySingleton(as: IUserTokenLocalDataSource)
class UserTokenLocalDataSource implements IUserTokenLocalDataSource {
  UserTokenLocalDataSource(this.storageService);

  final SecureStorageService storageService;

  @override
  Future<void> saveUserToken(String data) async {
    await storageService.write(StorageKeys.token, data);
  }

  @override
  Future<void> clearAll() async {
    await storageService.deleteAll();
  }

  @override
  Future<bool> isTokenSaved() async {
    return await storageService.contains(StorageKeys.token);
  }
}
