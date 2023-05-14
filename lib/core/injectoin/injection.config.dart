// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/auth/data/data_sources/user_token_local_data_source.dart'
    as _i18;
import '../../features/auth/data/data_sources/user_token_remote_data_source.dart'
    as _i10;
import '../../features/auth/data/repository/auth_repository.dart' as _i20;
import '../../features/auth/domain/repository/I_auth_repository.dart' as _i19;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i21;
import '../../features/auth/presentation/blocs/auth_form_bloc/auth_form_bloc.dart'
    as _i22;
import '../../features/home/data/data_sources/product_remote_data_source.dart'
    as _i7;
import '../../features/home/data/repository/product_repository.dart' as _i9;
import '../../features/home/domain/repository/i_product_repository.dart' as _i8;
import '../../features/home/presentation/blocs/add_to_cart_bloc/add_to_cart_bloc.dart'
    as _i15;
import '../../features/home/presentation/blocs/cart_bloc/cart_bloc.dart'
    as _i17;
import '../../features/home/presentation/blocs/order_bloc/order_bloc.dart'
    as _i11;
import '../../features/home/presentation/blocs/products_bloc/products_bloc.dart'
    as _i12;
import '../modules/client_modules.dart' as _i24;
import '../modules/modules.dart' as _i23;
import '../services/api_client.dart' as _i16;
import '../services/network_info.dart' as _i6;
import '../services/secure_storage_service.dart' as _i13;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final clientModules = _$ClientModules();
  final modules = _$Modules();
  gh.lazySingleton<_i3.BaseOptions>(() => clientModules.options);
  gh.lazySingleton<_i4.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i3.Dio>(() => modules.client);
  gh.lazySingleton<_i5.FlutterSecureStorage>(() => modules.storage);
  gh.lazySingleton<_i6.INetworkInfo>(
      () => _i6.NetworkInfo(connectivity: gh<_i4.Connectivity>()));
  gh.lazySingleton<_i7.IProductRemoteDataSource>(
      () => _i7.ProductRemoteDataSource());
  gh.lazySingleton<_i8.IProductRepository>(() => _i9.ProductRepository(
        gh<_i7.IProductRemoteDataSource>(),
        gh<_i6.INetworkInfo>(),
      ));
  gh.lazySingleton<_i10.IUserTokenRemoteDataSource>(
      () => _i10.UserRemoteDataSource());
  gh.factory<_i11.OrderBloc>(
      () => _i11.OrderBloc(gh<_i8.IProductRepository>()));
  gh.factory<_i12.ProductsBloc>(
      () => _i12.ProductsBloc(gh<_i8.IProductRepository>()));
  gh.factory<_i13.SecureStorageService>(
      () => _i13.SecureStorageService(gh<_i5.FlutterSecureStorage>()));
  gh.lazySingletonAsync<_i14.SharedPreferences>(
      () => modules.sharedPreferences);
  gh.factory<_i15.AddToCartBloc>(
      () => _i15.AddToCartBloc(gh<_i8.IProductRepository>()));
  gh.lazySingleton<_i16.ApiClient>(() => _i16.ApiClient(
        gh<_i3.Dio>(),
        gh<_i13.SecureStorageService>(),
      ));
  gh.factory<_i17.CartBloc>(() => _i17.CartBloc(gh<_i8.IProductRepository>()));
  gh.lazySingleton<_i18.IUserTokenLocalDataSource>(
      () => _i18.UserTokenLocalDataSource(gh<_i13.SecureStorageService>()));
  gh.lazySingleton<_i19.IAuthRepository>(() => _i20.AuthRepository(
        gh<_i10.IUserTokenRemoteDataSource>(),
        gh<_i18.IUserTokenLocalDataSource>(),
      ));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(gh<_i19.IAuthRepository>()));
  gh.factory<_i22.AuthFormBloc>(() => _i22.AuthFormBloc(
        gh<_i19.IAuthRepository>(),
        gh<_i16.ApiClient>(),
      ));
  return getIt;
}

class _$Modules extends _i23.Modules {}

class _$ClientModules extends _i24.ClientModules {}
