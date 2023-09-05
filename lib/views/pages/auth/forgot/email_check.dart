import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/otp.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class EmailCheckScreen extends StatelessWidget {
  const EmailCheckScreen({super.key});

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
                  "Check Your Email",
                  style: AppTextStyles.bodyExtraLarge
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.y(2),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 83,
                  child: Text(
                    "Follow a password recovery instruction we have just sent to your email address",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodyExtraSmall
                        .copyWith(color: AppColors.textMediumClr),
                  ),
                ),
                Spacing.y(10),
                Image.asset(AppImages.lock,
                    height: SizeConfig.imageSizeMultiplier * 65),
                Spacing.y(23),
                CustomButton(
                  title: "Next",
                  onTap: () {
                    Get.to(() => OtpScreen(),
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
