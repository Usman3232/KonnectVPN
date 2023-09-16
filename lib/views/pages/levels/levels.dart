import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 65,
              width: SizeConfig.widthMultiplier * 100,
              padding: AppConstants.defaultPadding,
              color: Colors.white.withOpacity(.05),
              child: Column(
                children: [
                  Spacing.y(6),
                  Row(
                    children: [
                      const CustomBackButton(),
                      Spacing.x(30.5),
                      Text(
                        "Levels",
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: Colors.white.withOpacity(.8),
                        ),
                      )
                    ],
                  ),
                  Spacing.y(8),
                  Image.asset(
                    AppImages.level,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6),
              child: Column(
                children: [
                  Spacing.y(4),
                  Text(
                    "Choose Your Level",
                    style: AppTextStyles.bodyExtraLarge
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacing.y(1),
                  Text(
                    "Level can boost your Income more ",
                    style: AppTextStyles.bodyExtraSmall.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1,
                        color: Colors.white38),
                  ),
                  Spacing.y(4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Level 3",
                      style: AppTextStyles.bodySmall.copyWith(
                          color: const Color(0xff3CA69D),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacing.y(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Increase APR by:",
                        style: AppTextStyles.bodySmall
                            .copyWith(color: Colors.white38),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "20%",
                            style: AppTextStyles.bodySmall,
                          ),
                          Spacing.x(1),
                          Text(
                            "+30",
                            style: AppTextStyles.bodyExtraSmall.copyWith(
                              fontSize: SizeConfig.textMultiplier * .8,
                              color: const Color(0xff3CA69D),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacing.y(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Minimum Stake Amount",
                        style: AppTextStyles.bodySmall
                            .copyWith(color: Colors.white38),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$21,564,3",
                            style: AppTextStyles.bodySmall,
                          ),
                          Spacing.x(1),
                          Text(
                            "+121",
                            style: AppTextStyles.bodyExtraSmall.copyWith(
                              fontSize: SizeConfig.textMultiplier * .8,
                              color: const Color(0xff3CA69D),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacing.y(4),
                  MaterialButton(
                    onPressed: () {},
                    height: SizeConfig.heightMultiplier * 6,
                    minWidth: SizeConfig.widthMultiplier * 92,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: const BorderSide(color: Colors.white24),
                    ),
                    child: Text(
                      "Unlock Now",
                      style: AppTextStyles.bodySmall.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.white24),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
