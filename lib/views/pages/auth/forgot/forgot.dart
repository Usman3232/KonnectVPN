import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/forgot.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/email_check.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  final cont = Get.put(ForgotCont());
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
                Text(
                  "Forgot Password?",
                  style: AppTextStyles.bodyExtraLarge
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.y(2),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 70,
                  child: Text(
                    "Enter your registated email address to receive password reset instruction",
                    style: AppTextStyles.bodyExtraSmall
                        .copyWith(color: AppColors.textLightClr),
                  ),
                ),
                Spacing.y(6),
                Text("Email", style: AppTextStyles.bodyExtraSmall),
                Spacing.y(1),
                AuthTextField(
                    hintText: "Enter your email", controller: cont.email),
                Spacing.y(43),
                CustomButton(
                  title: "Reset Password",
                  onTap: () {
                    Get.to(() => const EmailCheckScreen(),
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
