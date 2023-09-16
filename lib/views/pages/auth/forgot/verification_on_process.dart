import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/welcome_onboard.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class VerificationOnProcessScreen extends StatelessWidget {
  const VerificationOnProcessScreen({super.key});

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
                Text(
                  "Verification On Process",
                  style: AppTextStyles.bodyExtraLarge
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.y(2),
                Text(
                  "You’ll need a verification before using",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodyExtraSmall
                      .copyWith(color: Colors.white38),
                ),
                Spacing.y(10),
                Image.asset(AppImages.onProcess,
                    height: SizeConfig.imageSizeMultiplier * 65),
                Spacing.y(24),
                CustomButton(
                  title: "Back To Login",
                  onTap: () {
                    Get.to(() => const WelcomeOnboardScreen());
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
