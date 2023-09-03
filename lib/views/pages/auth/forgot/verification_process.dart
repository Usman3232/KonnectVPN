import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/welcome_onboard.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class VerificationProcessScreen extends StatelessWidget {
  const VerificationProcessScreen({super.key});

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
                Text("Verification On Process",
                    style: AppTextStyles.headingMedium),
                Spacing.y(2),
                Text(
                  "You’ll need a verification before using",
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
                      FeatherIcons.clock,
                      color: Colors.white54,
                      size: SizeConfig.imageSizeMultiplier * 20,
                    ),
                  ),
                ),
                Spacing.y(25),
                CustomButton(
                  title: "Back To Login",
                  onTap: () {
                    Get.to(() => WelcomeOnboardScreen(),
                        transition: Transition.rightToLeft);
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
