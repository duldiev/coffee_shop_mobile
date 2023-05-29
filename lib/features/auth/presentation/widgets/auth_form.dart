import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/core/router/app_router.gr.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/blocs/auth_form_bloc/auth_form_bloc.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/button_with_icon.dart';
import 'package:coffee_shop_mobile/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        if (state.isSuccess) {
          context.router.push(const NavRouter());
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                "Войти",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomTextField(
                  hintText: "Username",
                  onChanged: (nextEmail) => context
                      .read<AuthFormBloc>()
                      .add(EmailChanged(email: nextEmail)),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomTextField(
                  hintText: "Password",
                  onChanged: (nextEmail) => context
                      .read<AuthFormBloc>()
                      .add(PasswordChanged(password: nextEmail)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          ButtonWithIcon(
            onPressed: () => context
                .read<AuthFormBloc>()
                .add(const SignInWithEmailAndPassword()),
            width: double.maxFinite,
            height: 50,
            title: "Login",
            icon: Icons.login,
            elevation: false,
          ),
        ],
      ),
    );
  }
}
