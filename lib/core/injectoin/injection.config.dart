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
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/auth/data/data_sources/user_token_remote_data_source.dart'
    as _i5;
import '../../features/auth/data/repository/auth_repository.dart' as _i10;
import '../../features/auth/domain/repository/I_auth_repository.dart' as _i9;
import '../../features/auth/domain/usecase/auth_user_case.dart' as _i11;
import '../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    as _i12;
import '../../features/auth/presentation/blocs/auth_form_bloc/auth_form_bloc.dart'
    as _i13;
import '../services/api_client.dart' as _i8;
import '../services/modules.dart' as _i14;
import '../services/network_info.dart' as _i6;

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
  gh.lazySingleton<_i5.IUserTokenRemoteDataSource>(
      () => _i5.UserRemoteDataSource());
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfoImpl(connectivity: gh<_i3.Connectivity>()));
  gh.lazySingletonAsync<_i7.SharedPreferences>(() => modules.sharedPreferences);
  gh.factory<_i8.ApiClient>(() => _i8.ApiClient(gh<_i4.Dio>()));
  gh.lazySingleton<_i9.IAuthRepository>(() => _i10.AuthRepository(
        gh<_i5.IUserTokenRemoteDataSource>(),
        gh<_i6.NetworkInfo>(),
      ));
  gh.factory<_i11.AuthUserCase>(
      () => _i11.AuthUserCase(gh<_i9.IAuthRepository>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i11.AuthUserCase>()));
  gh.factory<_i13.AuthFormBloc>(
      () => _i13.AuthFormBloc(gh<_i11.AuthUserCase>()));
  return getIt;
}

class _$Modules extends _i14.Modules {}
