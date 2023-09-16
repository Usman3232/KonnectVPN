import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/bottom%20sheets/subscribe_option.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> revenueTitle = ["Day", "Monthly", "Year"];

  int selectedRevenue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(27),
                  Text("Calculator", style: AppTextStyles.bodyMedium)
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
                          style: AppTextStyles.bodySmall
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
                                    setState(() {
                                      selectedRevenue = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                    height: SizeConfig.heightMultiplier * 3.3,
                                    width: SizeConfig.widthMultiplier * 13.5,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(48),
                                      gradient: selectedRevenue == index
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
                                      style: AppTextStyles.bodyExtraSmall
                                          .copyWith(
                                              color: selectedRevenue == index
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
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
                    //Code Here for Graph
                    Spacing.y(20),
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
                            AppIcons.subcription,
                            height: SizeConfig.imageSizeMultiplier * 6.5,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.bottomSheet(SubscribeOptionBottomSheet(),
                                isScrollControlled: true);
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 5.5,
                            width: SizeConfig.widthMultiplier * 73,
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: AppColors.borderClr),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 3.5,
                                  width: SizeConfig.widthMultiplier * 8,
                                  padding: const EdgeInsets.all(4),
                                  margin: EdgeInsets.only(
                                      right: SizeConfig.widthMultiplier * 3),
                                  decoration: BoxDecoration(
                                    color: Colors.white10,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset(AppIcons.crownBasic),
                                ),
                                Text(
                                  "Silver",
                                  style: AppTextStyles.bodySmall
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  "Limit : 5",
                                  style: AppTextStyles.bodyExtraSmall.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white38),
                                ),
                                Spacing.x(2),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: SizeConfig.imageSizeMultiplier * 3,
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
                          style: AppTextStyles.bodySmall
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
                              Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: SizeConfig.imageSizeMultiplier * 4,
                              ),
                              Spacing.x(2),
                              Text(
                                "Update Data",
                                style: AppTextStyles.bodyExtraSmall.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.textMultiplier * 1.05),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacing.y(3),
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          margin: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Model : ",
                                  style: AppTextStyles.bodySmall
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "12EWTU",
                                  style: AppTextStyles.bodySmall.copyWith(
                                      color: AppColors.primaryClr,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Spacing.y(1),
                            Text(
                              "Bandwidth : 200 KNKT/m",
                              style: AppTextStyles.bodyExtraSmall
                                  .copyWith(color: Colors.white38),
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Text(
                              "Count",
                              style: AppTextStyles.bodyExtraSmall.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.textMultiplier * 1.05,
                                  color: Colors.white38),
                            ),
                            Spacing.y(1),
                            Container(
                              height: SizeConfig.heightMultiplier * 3.5,
                              width: SizeConfig.widthMultiplier * 12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white10),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2",
                                    style: AppTextStyles.bodyExtraSmall
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                  Spacing.x(1.5),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                    size: SizeConfig.imageSizeMultiplier * 4,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
