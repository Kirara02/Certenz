import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(const AuthEvent.checkStatus()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            isAuthenticated: (_) {
              while (context.canPop()) {
                context.pop();
              }
              context.go("/home");
            },
            unAuthenticated: () {
              while (context.canPop()) {
                context.pop();
              }
              context.go("/welcome");
            },
            initial: () {
              while (context.canPop()) {
                context.pop();
              }
              context.go("/splash");
            },
          );
        },
        child: Scaffold(
          body: Center(
            child: SpinKitFadingCircle(
              color: AppColors.primaryColors,
            ),
          ),
        ),
      ),
    );
  }
}
