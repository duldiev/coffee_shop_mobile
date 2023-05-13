// ignore_for_file: file_names
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/features/auth/domain/entity/auth_response_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthResponseEntity>> signIn(
    String email,
    String password,
  );

  Future<void> unauthenticate();

  Future<bool> checkAuthenticated();
}
