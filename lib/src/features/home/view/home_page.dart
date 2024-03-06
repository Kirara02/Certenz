import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/home/widget/card_account_home.dart';
import 'package:certenz/src/features/home/widget/card_home.dart';
import 'package:certenz/src/features/home/widget/header_home.dart';
import 'package:certenz/src/features/home/widget/history_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HistoryBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => CardAccountBloc(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.grey7,
        body: Builder(builder: (context) {
          return RefreshIndicator(
            onRefresh: () => Future.sync(() {
              context.read<UserBloc>().add(const UserEvent.getUser());
              context
                  .read<HistoryBloc>()
                  .add(const HistoryEvent.getAllHistories(page: 1));
              context
                  .read<CardAccountBloc>()
                  .add(const CardAccountEvent.getCards());
            }),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(
                height: AppScreens.height * 0.92,
                constraints: BoxConstraints(
                  minHeight: AppScreens.height * 0.9,
                ),
                child: Column(
                  children: [
                    const HeaderHome(),
                    const SizedBox(height: 24),
                    const CardAccountHome(),
                    const SizedBox(height: 32),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 32),
                            padding: const EdgeInsets.only(top: 48),
                            decoration: const BoxDecoration(
                              color: UIColors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                              ),
                            ),
                            child: const HistoryHome(),
                          ),
                          const CardHome(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
