// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../../features/auth/data/data_sources/user_token_remote_data_source.dart'
    as _i9;
import '../../features/auth/data/repository/auth_repository.dart' as _i13;
import '../../features/auth/domain/repository/I_auth_repository.dart' as _i12;
import '../../features/auth/domain/usecase/auth_user_case.dart' as _i14;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i15;
import '../../features/auth/presentation/blocs/auth_form_bloc/auth_form_bloc.dart'
    as _i16;
import '../../features/home/data/data_sources/product_remote_data_source.dart'
    as _i6;
import '../../features/home/data/repository/product_repository.dart' as _i8;
import '../../features/home/domain/repository/i_product_repository.dart' as _i7;
import '../services/api_client.dart' as _i11;
import '../services/modules.dart' as _i17;
import '../services/network_info.dart' as _i5;

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
  final modules = _$Modules();
  gh.lazySingleton<_i3.Connectivity>(() => modules.connectivity);
  gh.lazySingleton<_i4.Dio>(() => modules.client);
  gh.lazySingleton<_i5.INetworkInfo>(
      () => _i5.NetworkInfo(connectivity: gh<_i3.Connectivity>()));
  gh.lazySingleton<_i6.IProductRemoteDataSource>(
      () => _i6.ProductRemoteDataSource());
  gh.lazySingleton<_i7.IProductRepository>(() => _i8.ProductRepository(
        gh<_i6.ProductRemoteDataSource>(),
        gh<_i5.NetworkInfo>(),
      ));
  gh.lazySingleton<_i9.IUserTokenRemoteDataSource>(
      () => _i9.UserRemoteDataSource());
  gh.lazySingletonAsync<_i10.SharedPreferences>(
      () => modules.sharedPreferences);
  gh.factory<_i11.ApiClient>(() => _i11.ApiClient(gh<_i4.Dio>()));
  gh.lazySingleton<_i12.IAuthRepository>(() => _i13.AuthRepository(
        gh<_i9.IUserTokenRemoteDataSource>(),
        gh<_i5.NetworkInfo>(),
      ));
  gh.factory<_i14.AuthUserCase>(
      () => _i14.AuthUserCase(gh<_i12.IAuthRepository>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i14.AuthUserCase>()));
  gh.factory<_i16.AuthFormBloc>(
      () => _i16.AuthFormBloc(gh<_i14.AuthUserCase>()));
  return getIt;
}

class _$Modules extends _i17.Modules {}
