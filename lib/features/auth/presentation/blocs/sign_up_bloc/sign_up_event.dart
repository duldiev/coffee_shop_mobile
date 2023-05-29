part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;

  const factory SignUpEvent.usernameChanged({
    required String username,
  }) = UsernameChanged;

  const factory SignUpEvent.emailChanged({
    required String email,
  }) = EmailChanged;

  const factory SignUpEvent.passwordChanged({
    required String password,
  }) = PasswordChanged;

  const factory SignUpEvent.signUpWithEmailAndPassword() =
      SignUpWithEmailAndPassword;
}
