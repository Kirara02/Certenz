import 'package:certenz/src/features/auth/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc()..add(const LoginEvent.checkStatus()),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            isAuthenticated: (_) => Navigator.pushNamedAndRemoveUntil(
                context, "/home", (route) => false),
            unAuthenticated: () => Navigator.pushNamedAndRemoveUntil(
                context, "/welcome", (route) => false),
            initial: () => Navigator.pushNamedAndRemoveUntil(
                context, "/splash", (route) => false),
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
