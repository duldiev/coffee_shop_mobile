import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/core/usecases/usecases.dart';
import 'package:coffee_shop_mobile/features/auth/domain/entity/auth_response_entity.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthUserCase extends UseCase<AuthResponseEntity, AuthUserParams> {
  final IAuthRepository _authRepository;

  AuthUserCase(this._authRepository);

  @override
  Future<Either<Failure, AuthResponseEntity>> call(
    AuthUserParams params,
  ) async =>
      await _authRepository.signIn(
        params.email,
        params.password,
      );
}

class AuthUserParams extends Equatable {
  final String email;
  final String password;

  const AuthUserParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
