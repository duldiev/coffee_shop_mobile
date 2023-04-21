// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop_mobile/core/services/network_info.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/features/auth/data/data_sources/user_token_remote_data_source.dart';
import 'package:coffee_shop_mobile/features/auth/data/model/auth_response_model.dart';
import 'package:coffee_shop_mobile/features/auth/domain/entity/auth_response_entity.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(this._remoteDataSource, this._networkInfo);

  final IUserTokenRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(
    String email,
    String password,
  ) async =>
      await _signIn(
        () => _remoteDataSource.signIn(email, password),
      );

  Future<Either<Failure, AuthResponseEntity>> _signIn(
    Future<Either<Failure, AuthResponseModel>> Function() auth,
  ) async {
    if (await _networkInfo.isConnected) {
      final remoteToken = await auth();
      return remoteToken.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
