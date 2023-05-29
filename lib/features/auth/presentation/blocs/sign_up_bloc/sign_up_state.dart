part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required String emailAddress,
    required String password,
    required String username,
    required bool isSubmitting,
    required AutovalidateMode? showErrorMessages,
    required String message,
    required bool isSuccess,
  }) = _SignUpState;

  const SignUpState._();

  factory SignUpState.initial() => SignUpState(
        emailAddress: "",
        password: "",
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.disabled,
        message: "",
        isSuccess: false,
        username: '',
      );
}
