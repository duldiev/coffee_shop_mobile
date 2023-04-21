import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/auth/domain/usecase/auth_user_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authUserCase) : super(const AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) => authCheckRequested(event, emit));
    on<SignedOut>((event, emit) => signedOut(event, emit));
  }

  final AuthUserCase _authUserCase;

  Future<void> authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {}

  Future<void> signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {}
}
