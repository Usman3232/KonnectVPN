import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
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
                Text(
                  "Welcome Onboard",
                  style: AppTextStyles.bodyExtraLarge
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.y(2),
                Text(
                  "You will notify once the verification confirmed",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodyExtraSmall
                      .copyWith(color: AppColors.textMediumClr),
                ),
                Spacing.y(10),
                Image.asset(AppImages.getStarted,
                    height: SizeConfig.imageSizeMultiplier * 65),
                Spacing.y(24),
                CustomButton(
                  title: "Get Started Now",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
