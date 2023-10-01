import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/about%20us/about_us.dart';
import 'package:konnekt_vpn/views/pages/history/history.dart';
import 'package:konnekt_vpn/views/pages/language/language.dart';
import 'package:konnekt_vpn/views/pages/netwok%20test/network_test.dart';
import 'package:konnekt_vpn/views/pages/notification/notification.dart';
import 'package:konnekt_vpn/views/pages/privacy/privacy.dart';
import 'package:konnekt_vpn/views/pages/security/security.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';

import 'components/management_tile.dart';
import 'components/tile.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  List<String> generalTitles = [
    "Notification",
    "Security",
    "Language",
    "History",
    "Privacy",
    "Network Test",
    "About Us"
  ];
  List<String> generalIcons = [
    AppIcons.bell,
    AppIcons.sheildStar,
    AppIcons.flag,
    AppIcons.clock,
    AppIcons.document,
    AppIcons.station,
    AppIcons.info
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
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Settings"),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Spacing.y(5),
                      Stack(
                        children: [
                          Container(
                            height: SizeConfig.heightMultiplier * 20,
                            width: SizeConfig.widthMultiplier * 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white10, width: 10),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade900,
                              backgroundImage:
                                  const AssetImage("assets/images/profile.jpg"),
                            ),
                          ),
                          Positioned(
                            right: SizeConfig.widthMultiplier * 1.3,
                            bottom: SizeConfig.heightMultiplier * 1.3,
                            child: Container(
                              height: SizeConfig.heightMultiplier * 5.5,
                              width: SizeConfig.widthMultiplier * 11,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryClr),
                              child: SvgPicture.asset(AppIcons.galleyEdit),
                            ),
                          )
                        ],
                      ),
                      Spacing.y(1),
                      Text(
                        "6184749169",
                        style: textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white60),
                      ),
                      Spacing.y(1),
                      Text(
                        "Mattie Hardwick",
                        style: textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Spacing.y(.5),
                      Text(
                        "Verification Is Denied",
                        style: textTheme.displaySmall!.copyWith(
                            color: AppColors.errorClr,
                            fontWeight: FontWeight.w400),
                      ),
                      Spacing.y(3),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 2),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Account",
                                style: textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacing.y(2),
                            SettingManagementTile(),
                            Spacing.y(3),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "General",
                                style: textTheme.bodySmall!.copyWith(
                                    color: Colors.white.withOpacity(.8),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacing.y(1.5),
                            ...List.generate(
                              generalTitles.length,
                              (index) => SettingTile(
                                title: generalTitles[index],
                                icons: generalIcons[index],
                                onTap: () {
                                  if (index == 0) {
                                    Get.to(() => NotificationScreen());
                                  } else if (index == 1) {
                                    Get.to(() => SecurityScreen());
                                  } else if (index == 2) {
                                    Get.to(() => LanguageScreen());
                                  } else if (index == 3) {
                                    Get.to(() => HistoryScreen());
                                  } else if (index == 4) {
                                    Get.to(() => PrivacyScreen());
                                  } else if (index == 5) {
                                    Get.to(() => const NetworkTestScreen());
                                  } else if (index == 6) {
                                    Get.to(() => AboutUsScreen());
                                  }
                                },
                              ),
                            ),
                            Spacing.y(2),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
