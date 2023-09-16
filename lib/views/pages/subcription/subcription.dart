import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class SubcriptionScreen extends StatefulWidget {
  SubcriptionScreen({super.key});

  @override
  State<SubcriptionScreen> createState() => _SubcriptionScreenState();
}

class _SubcriptionScreenState extends State<SubcriptionScreen> {
  List<String> subcriptionType = ["Gold", "Silver", "Bronze", "Basic"];
  List<String> subcriptionPriceYearly = [
    "\$120 / year by billing yearly",
    "\$90 / year by billing yearly",
    "\$68 / year by billing yearly",
    "Stater subs for all user "
  ];
  List<String> subcriptionPriceMonthly = [
    "\$10,0 / Month",
    "\$8,0  / Month",
    "\$6,0  / Month",
    "\$0"
  ];
  int selectedSubcription = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(24),
                  Text(
                    "Subcriptions",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: SizedBox(
                  height: SizeConfig.heightMultiplier * 89.5,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Spacing.y(6),
                      Text(
                        "Choose Your Plan",
                        style: AppTextStyles.bodySmall
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Spacing.y(3),
                      ...List.generate(
                        4,
                        (index) => Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * 2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedSubcription = index;
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 16,
                                  width: SizeConfig.widthMultiplier * 88,
                                  margin: EdgeInsets.only(
                                      top: SizeConfig.heightMultiplier * .4,
                                      right: SizeConfig.widthMultiplier * .5),
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.widthMultiplier * 4),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white10),
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.white10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            subcriptionType[index],
                                            style: AppTextStyles.bodyMedium,
                                          ),
                                          Spacing.y(2),
                                          Text(
                                            subcriptionPriceMonthly[index],
                                            style: AppTextStyles.headingMedium,
                                          ),
                                          Spacing.y(1),
                                          Text(
                                            subcriptionPriceYearly[index],
                                            style: AppTextStyles.bodyExtraSmall
                                                .copyWith(
                                                    color: Colors.white38),
                                          )
                                        ],
                                      ),
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        height: 20,
                                        width: 20,
                                        padding: const EdgeInsets.all(2.5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color:
                                                  selectedSubcription == index
                                                      ? AppColors.primaryClr
                                                      : Colors.white24),
                                        ),
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  selectedSubcription == index
                                                      ? AppColors.primaryClr
                                                      : Colors.transparent),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                selectedSubcription == index
                                    ? Positioned(
                                        right: 0,
                                        top: 0,
                                        child: Image.asset(
                                          AppImages.currentPlan,
                                          height:
                                              SizeConfig.heightMultiplier * 9,
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacing.y(8),
                      CustomButton(
                        title: "Subscribe",
                        onTap: () {},
                      ),
                      Spacing.y(2)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
