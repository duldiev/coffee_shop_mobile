import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/core/services/base_repository.dart';
import 'package:coffee_shop_mobile/features/auth/data/model/auth_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IUserTokenRemoteDataSource {
  Future<Either<Failure, AuthResponseModel>> signIn(
    String email,
    String password,
  );
}

@LazySingleton(as: IUserTokenRemoteDataSource)
class UserRemoteDataSource extends BaseRepository
    implements IUserTokenRemoteDataSource {
  @override
  Future<Either<Failure, AuthResponseModel>> signIn(
    String email,
    String password,
  ) async {
    final result = call(RestMethod.post, URLs.auth, body: {
      "username": email,
      "password": password,
    });

    return result.then<Either<Failure, AuthResponseModel>>(
      (either) => either.fold(
        (l) => Left<Failure, AuthResponseModel>(l),
        (r) => Right<Failure, AuthResponseModel>(AuthResponseModel.fromJson(r)),
      ),
    );
  }
}
