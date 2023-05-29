import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(
    this.repository,
  ) : super(SignUpState.initial()) {
    on<EmailChanged>(emailChanged);
    on<UsernameChanged>(usernameChanged);
    on<PasswordChanged>(passwordChanged);
    on<SignUpWithEmailAndPassword>(signUpWithEmailAndPassword);
  }

  final IAuthRepository repository;

  void emailChanged(
    EmailChanged event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        emailAddress: event.email,
      ));

  void usernameChanged(
    UsernameChanged event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        username: event.username,
      ));

  void passwordChanged(
    PasswordChanged event,
    Emitter<SignUpState> emit,
  ) =>
      emit(state.copyWith(
        password: event.password,
      ));

  Future<void> signUpWithEmailAndPassword(
    SignUpWithEmailAndPassword event,
    Emitter<SignUpState> emit,
  ) async {
    final result = await repository.signUp(
      state.emailAddress,
      state.username,
      state.password,
    );

    result.fold(
      (f) => emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: AutovalidateMode.onUserInteraction,
          message: f.exception.message,
          isSuccess: false,
        ),
      ),
      (r) {
        emit(
          state.copyWith(
            isSubmitting: false,
            message: "Success",
            isSuccess: true,
          ),
        );
      },
    );

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.onUserInteraction,
    ));
  }
}
