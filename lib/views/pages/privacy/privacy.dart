import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/privacy.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/privacy/privacy_note.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';

class PrivacyScreen extends StatelessWidget {
  PrivacyScreen({super.key});

  final cont = Get.put(PrivacyCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Background(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              children: [
                Spacing.y(6),
                const CustomAppbar(title: "Privacy"),
                Spacing.y(5),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => const PrivacyNoteScreen());
                        },
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
                              style: textTheme.displaySmall!
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
                        style: textTheme.bodySmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Spacing.y(3),
                      Text(
                        "Marketing and Analytics",
                        style: textTheme.bodySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Spacing.y(1),
                      Text(
                        "Opt out of sharing data with 3rd party marketing vendors for analytics and to improve targeted advertising.",
                        style: textTheme.displaySmall!.copyWith(
                            fontSize: SizeConfig.textMultiplier * 1.05,
                            color: Colors.white38),
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
                                style: textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Spacing.y(1),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 68,
                                child: Text(
                                  "Binance may share usage data to 3rd party analytics platforms to help improve our products and marketing.",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: Colors.white38),
                                ),
                              ),
                            ],
                          ),
                          CupertinoSwitch(
                            activeColor: AppColors.secondaryClr,
                            trackColor: const Color(0xff414141),
                            value: cont.analytics.value,
                            onChanged: (value) {
                              cont.analytics.value = value;
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
                                style: textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Spacing.y(1),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 68,
                                child: Text(
                                  "Binance may share usage data to 3rd party ad platforms to help improve our targeting and marketing quality",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: Colors.white38),
                                ),
                              ),
                            ],
                          ),
                          CupertinoSwitch(
                            activeColor: AppColors.secondaryClr,
                            trackColor: const Color(0xff414141),
                            value: cont.advertise.value,
                            onChanged: (value) {
                              cont.advertise.value = value;
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
      ),
    );
  }
}
