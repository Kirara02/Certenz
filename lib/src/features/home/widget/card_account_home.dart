import 'package:carousel_slider/carousel_slider.dart';
import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/home/widget/balance_home.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icon.dart';

class CardAccountHome extends StatefulWidget {
  const CardAccountHome({super.key});

  @override
  State<CardAccountHome> createState() => _CardAccountHomeState();
}

class _CardAccountHomeState extends State<CardAccountHome> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<CardAccountBloc>()
        ..add(const CardAccountEvent.getCards()),
      child: BlocBuilder<CardAccountBloc, CardAccountState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => SizedBox(
              height: AppScreens.height * 0.18,
              child: const Center(
                child: SpinKitCircle(
                  color: AppColors.neutralN80,
                ),
              ),
            ),
            successList: (data) {
              if (data.isEmpty) {
                return InkWell(
                  onTap: () => context.pushNamed("atm"),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              color: UIColors.white, shape: BoxShape.circle),
                          child: const LineIcon.plus(
                            color: AppColors.orange,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          LocaleKeys.home_page_add_card.tr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: AppConstants.kFontSizeL,
                            color: AppColors.black2,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
              return Column(
                children: [
                  const BalanceHome(),
                  const SizedBox(height: 32),
                  Stack(
                    children: [
                      CarouselSlider(
                        carouselController: _carouselController,
                        options: CarouselOptions(
                          height: AppScreens.height * 0.2,
                          autoPlay: false,
                          reverse: false,
                          // aspectRatio: 16 / 9,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                        ),
                        items: data.map((item) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: AppScreens.width,
                              padding: const EdgeInsets.symmetric(
                                vertical: 25,
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                  image: AssetImage(Assets.images.card.path),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.1),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  UICacheNetworkImage(
                                    imageUrl: item.bankImage!,
                                    size: const Size(120, 60),
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.accountName!,
                                        style: const TextStyle(
                                          fontSize: AppConstants.kFontSizeS,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.neutralN30,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      Text(
                                        formatCardNumber(item.cardNumber!),
                                        style: const TextStyle(
                                          fontSize: AppConstants.kFontSizeS,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.neutralN30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
