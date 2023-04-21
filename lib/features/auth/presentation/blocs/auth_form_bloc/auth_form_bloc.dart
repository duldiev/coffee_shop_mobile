import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/auth/domain/usecase/auth_user_case.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  AuthFormBloc(this._authUserCase) : super(AuthFormState.initial()) {
    on<EmailChanged>(
      (event, emit) => changeEmailAddress(event, emit),
    );
    on<PasswordChanged>(
      (event, emit) => changePassword(event, emit),
    );
    on<SignInWithEmailAndPassword>(
      (event, emit) => signInWithEmailPassword(event, emit),
    );
  }

  final AuthUserCase _authUserCase;

  Future<void> signInWithEmailPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthFormState> emit,
  ) async {
    final result = await _authUserCase(
      AuthUserParams(
        email: state.emailAddress,
        password: state.password,
      ),
    );

    result.fold(
      (f) => emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: AutovalidateMode.onUserInteraction,
          message: f.exception.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          isSubmitting: true,
          message: "Success",
        ),
      ),
    );

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.onUserInteraction,
    ));
  }

  void changePassword(
    PasswordChanged event,
    Emitter<AuthFormState> emit,
  ) =>
      emit(state.copyWith(
        password: event.password,
      ));

  void changeEmailAddress(
    EmailChanged event,
    Emitter<AuthFormState> emit,
  ) =>
      emit(state.copyWith(
        emailAddress: event.email,
      ));
}
