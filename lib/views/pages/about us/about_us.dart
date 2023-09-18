import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({super.key});
  List<String> socialIcons = [
    AppIcons.facebook,
    AppIcons.twitter,
    AppIcons.discord
  ];
  List<String> aboutTitle = [
    "Terms & Conditions",
    "Privacy Policy",
    "Review The App"
  ];
  List<String> aboutIcons = [
    AppIcons.document,
    AppIcons.privacyPolicy,
    AppIcons.star
  ];

  List<String> aboutDevice = ["Device id", "Check For Updated"];
  List<String> aboutDeviceIcons = [AppIcons.mobile, AppIcons.checkUpdate];
  List<String> aboutDeviceUpdate = [
    "91733964163015807410",
    "Your current version is up to date"
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "About Us"),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 9.6,
                      width: SizeConfig.widthMultiplier * 21.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white10),
                      alignment: Alignment.center,
                      child: Image.asset(AppImages.appLogo,
                          height: SizeConfig.imageSizeMultiplier * 12),
                    ),
                    Spacing.y(2),
                    Text(
                      "V2.67.1",
                      style:
                          textTheme.bodyMedium!.copyWith(color: Colors.white38),
                    ),
                    Spacing.y(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          socialIcons.length,
                          (index) => Container(
                            height: SizeConfig.heightMultiplier * 5.5,
                            width: SizeConfig.widthMultiplier * 12,
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 2),
                            decoration: const BoxDecoration(
                                color: Colors.white10, shape: BoxShape.circle),
                            alignment: Alignment.center,
                            child: Image.asset(
                              socialIcons[index],
                              height: SizeConfig.imageSizeMultiplier * 6,
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacing.y(5),
                    ...List.generate(
                      aboutTitle.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 5),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                aboutIcons[index],
                                height: SizeConfig.imageSizeMultiplier * 5.5,
                                color: Colors.white,
                              ),
                              Spacing.x(4),
                              Text(
                                aboutTitle[index],
                                style: textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: SizeConfig.imageSizeMultiplier * 4)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(color: AppColors.borderClr, height: 0),
                    Spacing.y(5),
                    ...List.generate(
                      aboutDevice.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 4),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Container(
                                height: 44,
                                width: 44,
                                margin: EdgeInsets.only(
                                    right: SizeConfig.widthMultiplier * 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white10),
                                alignment: Alignment.center,
                                child: Image.asset(
                                  aboutDeviceIcons[index],
                                  height: SizeConfig.imageSizeMultiplier * 5.5,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    aboutDevice[index],
                                    style: textTheme.displaySmall!
                                        .copyWith(fontWeight: FontWeight.w700),
                                  ),
                                  Spacing.y(1),
                                  Text(
                                    aboutDeviceUpdate[index],
                                    style: textTheme.displaySmall!.copyWith(
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05,
                                        color: Colors.white38),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: SizeConfig.imageSizeMultiplier * 4,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
