import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/calculator.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/bottom%20sheets/subscribe_option.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});

  final cont = Get.put(CalculatorCont());

  List<String> revenueTitle = ["Day", "Monthly", "Year"];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: GlassBackground(
          inAsyncCall: cont.isBlur.value,
          child: Background(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(6),
                  Row(
                    children: [
                      const CustomBackButton(),
                      Spacing.x(26),
                      Text("Calculator",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.white.withOpacity(.8)))
                    ],
                  ),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Revenue Record",
                              style: textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 4,
                              width: SizeConfig.widthMultiplier * 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                border: Border.all(color: AppColors.borderClr),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                    revenueTitle.length,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        cont.selectedRevenue.value = index;
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.easeIn,
                                        height:
                                            SizeConfig.heightMultiplier * 3.3,
                                        width:
                                            SizeConfig.widthMultiplier * 13.5,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(48),
                                          gradient: cont
                                                      .selectedRevenue.value ==
                                                  index
                                              ? LinearGradient(
                                                  colors: [
                                                    Colors.white,
                                                    Colors.white.withOpacity(.8)
                                                  ],
                                                )
                                              : null,
                                        ),
                                        child: Text(
                                          revenueTitle[index],
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  color: cont.selectedRevenue
                                                              .value ==
                                                          index
                                                      ? Colors.black
                                                      : Colors.white,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      .9,
                                                  fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1K-3K \$",
                                    style: textTheme.headlineLarge!.copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            SizeConfig.textMultiplier * 4.4),
                                  ),
                                  Text(
                                    "+21.01%",
                                    style: textTheme.bodySmall!.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white60),
                                  ),
                                ],
                              ),
                              Image.asset(
                                AppImages.lineChart,
                                height: SizeConfig.imageSizeMultiplier * 32,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier * 5.5,
                              width: SizeConfig.widthMultiplier * 12.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: AppColors.primaryClr),
                              alignment: Alignment.center,
                              child: Image.asset(
                                AppIcons.subcriptionFilled,
                                height: SizeConfig.imageSizeMultiplier * 6,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.bottomSheet(
                                    const SubscribeOptionBottomSheet(),
                                    barrierColor: Colors.transparent,
                                    isScrollControlled: true);
                              },
                              child: Container(
                                height: SizeConfig.heightMultiplier * 5.5,
                                width: SizeConfig.widthMultiplier * 73,
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border:
                                      Border.all(color: AppColors.borderClr),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.heightMultiplier * 3.5,
                                      width: SizeConfig.widthMultiplier * 8,
                                      padding: const EdgeInsets.all(4),
                                      margin: EdgeInsets.only(
                                          right:
                                              SizeConfig.widthMultiplier * 3),
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Image.asset(AppIcons.crownSilver),
                                    ),
                                    Text(
                                      "Silver",
                                      style: textTheme.bodySmall!.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "Limit : 5",
                                      style: textTheme.displaySmall!.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white38),
                                    ),
                                    Spacing.x(2),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size:
                                          SizeConfig.imageSizeMultiplier * 2.5,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacing.y(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Device Model",
                              style: textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 4,
                              width: SizeConfig.widthMultiplier * 28,
                              decoration: BoxDecoration(
                                color: AppColors.primaryClr,
                                borderRadius: BorderRadius.circular(48),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppIcons.update,
                                    height: SizeConfig.imageSizeMultiplier * 3,
                                  ),
                                  Spacing.x(2),
                                  Text(
                                    "Update Data",
                                    style: textTheme.displaySmall!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Spacing.y(1.5),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 38,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        SizeConfig.heightMultiplier * 1.5),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 52,
                                      width: 52,
                                      margin: EdgeInsets.only(
                                          right:
                                              SizeConfig.widthMultiplier * 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white10),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        AppIcons.dataBase,
                                        height: SizeConfig.imageSizeMultiplier *
                                            5.5,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Model : ",
                                              style: textTheme.bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            Text(
                                              "12EWTU",
                                              style: textTheme.bodySmall!
                                                  .copyWith(
                                                      color:
                                                          AppColors.primaryClr,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Spacing.y(1),
                                        Text(
                                          "Bandwidth : 200 KNKT/m",
                                          style: textTheme.displaySmall!
                                              .copyWith(color: Colors.white38),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "Count",
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.05,
                                                  color: Colors.white38),
                                        ),
                                        Spacing.y(1),
                                        Container(
                                          height:
                                              SizeConfig.heightMultiplier * 3.5,
                                          width:
                                              SizeConfig.widthMultiplier * 10.5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.white10),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "2",
                                                style: textTheme.displaySmall!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                              Spacing.x(1),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color: Colors.white38,
                                                size: SizeConfig
                                                        .imageSizeMultiplier *
                                                    4,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
