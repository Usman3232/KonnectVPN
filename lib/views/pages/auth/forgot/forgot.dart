import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/email_check.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.y(20),
                Text("Forgot Password?", style: AppTextStyles.headingMedium),
                Spacing.y(2),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 70,
                  child: Text(
                    "Enter your registated email address to receive password reset instruction",
                    style: AppTextStyles.bodySmall
                        .copyWith(color: AppColors.textMediumClr),
                  ),
                ),
                Spacing.y(6),
                Text("Email", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                AuthTextField(hintText: "Enter your email", controller: email),
                Spacing.y(43),
                CustomButton(
                  title: "Reset Password",
                  onTap: () {
                    Get.to(() => EmailCheckScreen(),
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
