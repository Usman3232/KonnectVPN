import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/new_password.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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
                  "Well Done",
                  style: AppTextStyles.bodyExtraLarge
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.y(2),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 80,
                  child: Text(
                    "Your profile is now being reviewed. You can expect it to finish in the next 24 hours.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodyExtraSmall
                        .copyWith(color: AppColors.textLightClr),
                  ),
                ),
                Spacing.y(10),
                Image.asset(AppImages.getStarted,
                    height: SizeConfig.imageSizeMultiplier * 65),
                Spacing.y(23),
                CustomButton(
                  title: "Get Started Now",
                  onTap: () {
                    Get.to(() => NewPasswordScreen(),
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
