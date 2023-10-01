import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';

import 'package:konnekt_vpn/controllers/calculator.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/bottom%20sheets/subscribe_option.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';

import 'components/tile.dart';
import 'components/revenue_record.dart';

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
                        RevenueRecord(),
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
                        ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const DeviceTile();
                          },
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
