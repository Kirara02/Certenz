import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
            isAuthenticated: (_) => Navigator.pushNamedAndRemoveUntil(
                context, "/home", (route) => false),
            unAuthenticated: () => Navigator.pushNamedAndRemoveUntil(
                context, "/welcome", (route) => false),
            initial: () => Navigator.pushNamedAndRemoveUntil(
                context, "/splash", (route) => false),
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
