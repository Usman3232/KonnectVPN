import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class WelcomeOnboardScreen extends StatelessWidget {
  const WelcomeOnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.defaultPadding,
            child: Column(
              children: [
                Spacing.y(20),
                Text("Welcome Onboard", style: AppTextStyles.headingMedium),
                Spacing.y(2),
                Text(
                  "You will notify once the verification confirmed",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodySmall
                      .copyWith(color: AppColors.textMediumClr),
                ),
                Spacing.y(10),
                Container(
                  height: SizeConfig.heightMultiplier * 25,
                  width: SizeConfig.widthMultiplier * 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryClr),
                  child: Center(
                    child: Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.white54,
                      size: SizeConfig.imageSizeMultiplier * 20,
                    ),
                  ),
                ),
                Spacing.y(25),
                CustomButton(
                  title: "Get Started Now",
                  onTap: () {
                    // Get.to(() => GetStartedScreen(),
                    //     transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
