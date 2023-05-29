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
import 'package:network_info_plus/network_info_plus.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../features/auth/data/data_sources/user_token_local_data_source.dart'
    as _i14;
import '../../features/auth/data/data_sources/user_token_remote_data_source.dart'
    as _i7;
import '../../features/auth/data/repository/auth_repository.dart' as _i21;
import '../../features/auth/domain/repository/I_auth_repository.dart' as _i20;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i23;
import '../../features/auth/presentation/blocs/auth_form_bloc/auth_form_bloc.dart'
    as _i24;
import '../../features/auth/presentation/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i22;
import '../../features/home/data/data_sources/product_remote_data_source.dart'
    as _i6;
import '../../features/home/data/repository/product_repository.dart' as _i13;
import '../../features/home/domain/repository/i_product_repository.dart'
    as _i12;
import '../../features/home/presentation/blocs/add_to_cart_bloc/add_to_cart_bloc.dart'
    as _i17;
import '../../features/home/presentation/blocs/cart_bloc/cart_bloc.dart'
    as _i19;
import '../../features/home/presentation/blocs/order_bloc/order_bloc.dart'
    as _i15;
import '../../features/home/presentation/blocs/products_bloc/products_bloc.dart'
    as _i16;
import '../modules/client_modules.dart' as _i26;
import '../modules/modules.dart' as _i25;
import '../services/api_client.dart' as _i18;
import '../services/network_info.dart' as _i11;
import '../services/secure_storage_service.dart' as _i9;

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
  gh.lazySingleton<_i6.IProductRemoteDataSource>(
      () => _i6.ProductRemoteDataSource());
  gh.lazySingleton<_i7.IUserTokenRemoteDataSource>(
      () => _i7.UserRemoteDataSource());
  gh.lazySingleton<_i8.NetworkInfo>(() => modules.network);
  gh.factory<_i9.SecureStorageService>(
      () => _i9.SecureStorageService(gh<_i5.FlutterSecureStorage>()));
  gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => modules.sharedPreferences);
  gh.lazySingleton<_i11.INetworkInfo>(() => _i11.NetworkInfo(
        connectivity: gh<_i4.Connectivity>(),
        info: gh<_i8.NetworkInfo>(),
      ));
  gh.lazySingleton<_i12.IProductRepository>(() => _i13.ProductRepository(
        gh<_i6.IProductRemoteDataSource>(),
        gh<_i11.INetworkInfo>(),
      ));
  gh.lazySingleton<_i14.IUserTokenLocalDataSource>(
      () => _i14.UserTokenLocalDataSource(gh<_i9.SecureStorageService>()));
  gh.factory<_i15.OrderBloc>(
      () => _i15.OrderBloc(gh<_i12.IProductRepository>()));
  gh.factory<_i16.ProductsBloc>(
      () => _i16.ProductsBloc(gh<_i12.IProductRepository>()));
  gh.factory<_i17.AddToCartBloc>(
      () => _i17.AddToCartBloc(gh<_i12.IProductRepository>()));
  gh.lazySingleton<_i18.ApiClient>(() => _i18.ApiClient(
        gh<_i3.Dio>(),
        gh<_i9.SecureStorageService>(),
        gh<_i11.INetworkInfo>(),
      ));
  gh.factory<_i19.CartBloc>(() => _i19.CartBloc(gh<_i12.IProductRepository>()));
  gh.lazySingleton<_i20.IAuthRepository>(() => _i21.AuthRepository(
        gh<_i7.IUserTokenRemoteDataSource>(),
        gh<_i14.IUserTokenLocalDataSource>(),
      ));
  gh.factory<_i22.SignUpBloc>(
      () => _i22.SignUpBloc(gh<_i20.IAuthRepository>()));
  gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(gh<_i20.IAuthRepository>()));
  gh.factory<_i24.AuthFormBloc>(() => _i24.AuthFormBloc(
        gh<_i20.IAuthRepository>(),
        gh<_i18.ApiClient>(),
      ));
  return getIt;
}

class _$Modules extends _i25.Modules {}

class _$ClientModules extends _i26.ClientModules {}
