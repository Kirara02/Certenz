import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/atm/view/atm_card_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({
    super.key,
  });

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  bool hasCard = false;
  final CarouselController _carouselController = CarouselController();

  List<Map<String, dynamic>> listCards = [
    {
      "bank": Assets.images.logo.image(width: 120),
      "name": "JHON DOE",
      "norek": "**** **** **** 1234",
    },
    {
      "bank": Assets.images.bca.image(),
      "name": "JHON DOE",
      "norek": "**** **** **** 2345",
    },
    {
      "bank": Assets.images.mandiri.image(),
      "name": "JHON DOE",
      "norek": "**** **** **** 3456",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.43,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.38,
            color: AppColors.orange,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 43,
              right: 13,
              left: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            Assets.images.user1.path,
                            width: 32,
                            height: 32,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Ajie Kusuma",
                          style: TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralN140,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                Assets.icons.notification.path,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.home_page_linked_card.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          hasCard = !hasCard;
                        });
                      },
                      child: Icon(Icons.replay_circle_filled),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  child: hasCard
                      ? Stack(
                          children: [
                            CarouselSlider(
                              carouselController: _carouselController,
                              options: CarouselOptions(
                                height: AppScreens.height * 0.25,
                                autoPlay: false,
                                reverse: false,
                                aspectRatio: 16 / 9,
                                viewportFraction: 1,
                                initialPage: 0,
                                enableInfiniteScroll: false,
                              ),
                              items: listCards.map((item) {
                                return Container(
                                  width: AppScreens.width,
                                  height: AppScreens.height * 0.25,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Container(
                                    width: AppScreens.width,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 25,
                                      horizontal: 24,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(Assets.images.card.path),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        item['bank'],
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['name'],
                                              style: const TextStyle(
                                                fontSize:
                                                    AppConstants.kFontSizeS,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.neutralN30,
                                              ),
                                            ),
                                            const SizedBox(height: 7),
                                            Text(
                                              item["norek"],
                                              style: const TextStyle(
                                                fontSize:
                                                    AppConstants.kFontSizeS,
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
                            Positioned.fill(
                              child: SizedBox(
                                width: AppScreens.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () =>
                                          _carouselController.previousPage(),
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          color: AppColors.neutralN140,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.chevron_left_rounded,
                                          color: AppColors.orange,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          _carouselController.nextPage(),
                                      child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: const BoxDecoration(
                                          color: AppColors.neutralN140,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.chevron_right_rounded,
                                          color: AppColors.orange,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      : InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AtmCardPage(),
                              )),
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            color: AppColors.neutralN140,
                            radius: const Radius.circular(12),
                            padding: const EdgeInsets.symmetric(
                              vertical: 48,
                              horizontal: 12,
                            ),
                            dashPattern: [8, 4],
                            strokeWidth: 2,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 16,
                                  color: AppColors.neutralN140,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "No Account Yet",
                                  style: TextStyle(
                                    fontSize: AppConstants.kFontSizeL,
                                    color: AppColors.neutralN140,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                )
                // SizedBox(
                //   width: AppScreens.width,
                //   height: AppScreens.height * 0.25,
                //   child: Container(
                //     width: AppScreens.width,
                //     padding: const EdgeInsets.symmetric(
                //       vertical: 25,
                //       horizontal: 22,
                //     ),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(Assets.images.card.path),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Image.asset(
                //           Assets.images.logo.path,
                //           width: AppScreens.width * 0.20,
                //         ),
                //         const Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "JOHN DOE",
                //               style: TextStyle(
                //                 fontSize: AppConstants.kFontSizeS,
                //                 fontWeight: FontWeight.bold,
                //                 color: AppColors.neutralN30,
                //               ),
                //             ),
                //             SizedBox(height: 7),
                //             Text(
                //               "**** **** **** 1234",
                //               style: TextStyle(
                //                 fontSize: AppConstants.kFontSizeS,
                //                 fontWeight: FontWeight.bold,
                //                 color: AppColors.neutralN30,
                //               ),
                //             ),
                //           ],
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
