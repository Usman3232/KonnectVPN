import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class PrivacyScreen extends StatefulWidget {
  PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool analytics = false;
  bool advertise = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(28),
                  Text("Privacy", style: AppTextStyles.bodyMedium)
                ],
              ),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.heightMultiplier * 4.5,
                            width: SizeConfig.widthMultiplier * 10,
                            margin: EdgeInsets.only(
                                right: SizeConfig.widthMultiplier * 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white10),
                            alignment: Alignment.center,
                            child: Image.asset(AppIcons.document,
                                height: SizeConfig.imageSizeMultiplier * 4.5),
                          ),
                          Text(
                            "Privacy Policy",
                            style: AppTextStyles.bodyExtraSmall
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: SizeConfig.imageSizeMultiplier * 4)
                        ],
                      ),
                    ),
                    Spacing.y(6),
                    Text(
                      "General",
                      style: AppTextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.y(3),
                    Text(
                      "Marketing and Analytics",
                      style: AppTextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    Spacing.y(1),
                    Text(
                      "Opt out of sharing data with 3rd party marketing vendors for analytics and to improve targeted advertising.",
                      style: AppTextStyles.bodyExtraSmall.copyWith(
                          fontSize: SizeConfig.textMultiplier * 1.05,
                          color: AppColors.textLightClr),
                    ),
                    Spacing.y(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Analytics",
                              style: AppTextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Spacing.y(1),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 68,
                              child: Text(
                                "Binance may share usage data to 3rd party analytics platforms to help improve our products and marketing.",
                                style: AppTextStyles.bodyExtraSmall.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    color: AppColors.textLightClr),
                              ),
                            ),
                          ],
                        ),
                        CupertinoSwitch(
                          activeColor: AppColors.secondaryClr,
                          trackColor: const Color(0xff414141),
                          value: analytics,
                          onChanged: (value) {
                            setState(() {
                              analytics = value;
                            });
                          },
                        )
                      ],
                    ),
                    Spacing.y(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Advertising",
                              style: AppTextStyles.bodySmall
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Spacing.y(1),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 68,
                              child: Text(
                                "Binance may share usage data to 3rd party ad platforms to help improve our targeting and marketing quality",
                                style: AppTextStyles.bodyExtraSmall.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1.05,
                                    color: AppColors.textLightClr),
                              ),
                            ),
                          ],
                        ),
                        CupertinoSwitch(
                          activeColor: AppColors.secondaryClr,
                          trackColor: const Color(0xff414141),
                          value: advertise,
                          onChanged: (value) {
                            setState(() {
                              advertise = value;
                            });
                          },
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
