import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/core/services/api_client.dart';
import 'package:coffee_shop_mobile/features/auth/domain/repository/I_auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  AuthFormBloc(
    this.repository,
    this.client,
  ) : super(AuthFormState.initial()) {
    on<EmailChanged>(changeEmailAddress);
    on<PasswordChanged>(changePassword);
    on<SignInWithEmailAndPassword>(signInWithEmailPassword);
  }

  final IAuthRepository repository;
  final ApiClient client;

  Future<void> signInWithEmailPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthFormState> emit,
  ) async {
    final result = await repository.signIn(
      state.emailAddress,
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
        getIt<ApiClient>().client.options = BaseOptions(
          baseUrl: URLs.baseUrl,
          responseType: ResponseType.json,
          contentType: 'application/json',
          headers: {
            "Authorization": 'Bearer ${r.access}',
          },
        );
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
