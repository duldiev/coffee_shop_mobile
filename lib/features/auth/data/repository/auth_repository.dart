import 'package:coffee_shop_mobile/features/auth/data/data_sources/user_token_local_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/features/auth/data/data_sources/user_token_remote_data_source.dart';
import 'package:coffee_shop_mobile/features/auth/data/model/auth_response_model.dart';
import 'package:coffee_shop_mobile/features/auth/domain/entity/auth_response_entity.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(
    this.remoteDataSource,
    this.localDataSource,
  );

  final IUserTokenRemoteDataSource remoteDataSource;
  final IUserTokenLocalDataSource localDataSource;

  @override
  Future<Either<Failure, AuthResponseEntity>> signIn(
    String email,
    String password,
  ) async =>
      await _signIn(
        () => remoteDataSource.signIn(email, password),
      );

  Future<Either<Failure, AuthResponseEntity>> _signIn(
    Future<Either<Failure, AuthResponseModel>> Function() auth,
  ) async {
    final remoteToken = await auth();
    return remoteToken.fold(
      (l) => Left(l),
      (r) {
        localDataSource.saveUserToken(r.access);
        return Right(r);
      },
    );
  }

  @override
  Future<void> unauthenticate() async {
    await localDataSource.clearAll();
  }

  @override
  Future<bool> checkAuthenticated() async {
    return await localDataSource.isTokenSaved();
  }

  @override
  Future<Either<Failure, Unit>> signUp(
    String email,
    String username,
    String password,
  ) async {
    final request = await remoteDataSource.signUp(email, username, password);
    return request.fold((l) => Left(l), (r) => Right(r));
  }
}
