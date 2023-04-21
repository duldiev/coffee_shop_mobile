part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  factory AuthFormState({
    required String emailAddress,
    required String password,
    required bool isSubmitting,
    required AutovalidateMode? showErrorMessages,
    required String message,
  }) = _AuthFormState;

  const AuthFormState._();

  factory AuthFormState.initial() => AuthFormState(
        emailAddress: "",
        password: "",
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.disabled,
        message: "",
      );
}
