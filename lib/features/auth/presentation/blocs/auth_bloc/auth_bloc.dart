import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this.repository,
  ) : super(const AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) => authCheckRequested(event, emit));
    on<SignedOut>((event, emit) => signedOut(event, emit));
  }

  final IAuthRepository repository;

  Future<void> authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    final result = await repository.checkAuthenticated();
    emit(
      result
          ? const AuthState.authenticated()
          : const AuthState.unauthenticated(),
    );
  }

  Future<void> signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await repository.unauthenticate();
    emit(const AuthState.unauthenticated());
  }
}
